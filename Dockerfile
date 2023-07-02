FROM ubuntu:22.04
MAINTAINER itsupport@systech.ae
RUN apt-get update -y && apt-get install -y curl supervisor
#RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
#RUN apt-get update -y
#RUN apt install nodejs
RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
