cask :v1 => 'boot2docker' do
  version '1.5.0'
  sha256 'd9399912d3cee93f862fc7b39a4be73807a4759162e27a85bf9de53d9f938059'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  name 'Boot2Docker'
  homepage 'https://github.com/boot2docker/osx-installer'
  license :apache

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
