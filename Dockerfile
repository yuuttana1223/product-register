FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    nodejs
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install
