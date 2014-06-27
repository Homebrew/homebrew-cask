class Boot2docker < Cask
  version '1.0.0'
  sha256 '4bcdc3b4f309c7957aa8b91768f9c59d23f63258bc83d22cbdf268f5bbf2785f'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.0.0/Boot2Docker-1.0.0.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.0.0.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
