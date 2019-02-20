
setup: \
	etc/certs

etc/certs:
	mkdir -p $@ && cd $@ && openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout default.key -out default.crt

clean:
	rm -rf etc/certs

