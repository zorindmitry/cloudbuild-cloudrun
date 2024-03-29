#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
#---------------------------------------------------------------------------
#---------------------------------------------------------------------------

FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Docker Image on CloudRun!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.123</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
