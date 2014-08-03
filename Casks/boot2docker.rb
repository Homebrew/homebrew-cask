class Boot2docker < Cask
  version '1.1.2'
  sha256 'd85b77ac181987fa4b41b5e50d54b05e47165b675242abd20170a460e6797e7a'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.1.2/Boot2Docker-1.1.2.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.1.2.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
