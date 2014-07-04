class Boot2docker < Cask
  version '1.0.1'
  sha256 '9f03f3eca0d3645d082bf249ad0a1ce3feb60134bdad6fcfbb47aa67a30c5e79'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.0.1/Boot2Docker-1.0.1.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.0.1.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
