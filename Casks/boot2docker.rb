class Boot2docker < Cask
  version '1.1.0'
  sha256 '6a98e0311557199a71b23d596a0547e3a7902a1a04f42905c6141a08f2a1bb7d'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.1.0/Boot2Docker-1.1.0.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.1.0.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
