cask :v1 => 'boot2docker' do
  version '1.7.0'
  sha256 '1a69fe75acc4eb71f0a61883d929514b07c919edd254f4cd966e73398bda474a'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  appcast 'https://github.com/boot2docker/osx-installer/releases.atom'
  name 'Boot2Docker'
  homepage 'https://github.com/boot2docker/osx-installer'
  license :apache

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
