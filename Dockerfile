# based on https://hub.docker.com/r/tianon/latex/dockerfile. Thank you! ❤️
FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
		biber \
		latexmk \
		make \
		texlive-full \
		python-pygments \
		wget \
		xzdec \
	&& tlmgr init-usertree \
	&& tlmgr install minted \
	&& rm -rf /var/lib/apt/lists/*
