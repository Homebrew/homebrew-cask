class Boot2docker < Cask
  version '1.1.1'
  sha256 'cde211e758737d290d927afc8167c55ebb490c5569998332fb0a524d5f7a02eb'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.1.1/Boot2Docker-1.1.1.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.1.1.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
