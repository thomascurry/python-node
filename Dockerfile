FROM node:lts-alpine

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node"]
