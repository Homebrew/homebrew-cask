class Boot2docker < Cask
  version '1.2.0'
  sha256 'd61095e20f9b0dc4c139e48d14fdba50dfc425cc4c2e73173936ae383f80f0fd'

  url 'https://github.com/boot2docker/osx-installer/releases/download/v1.2.0/Boot2Docker-1.2.0.pkg'
  homepage 'https://github.com/boot2docker/osx-installer'

  install 'Boot2Docker-1.2.0.pkg'
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
