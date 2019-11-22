FROM alpine:3.9

RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN mkdir -p /run/nginx

COPY localhost.conf /etc/nginx/conf.d/localhost.conf

COPY index.html /var/www/index.html

CMD nginx -g "daemon off;"