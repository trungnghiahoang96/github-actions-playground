FROM python:3.7-slim

WORKDIR /usr/src/app

COPY ./src ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

CMD ["sh", "-c", "gunicorn --bind :$PORT --workers 1 --threads 4 --timeout 0 main:app"]
