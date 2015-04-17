cask :v1 => 'boot2docker' do
  version '1.6.0'
  sha256 'a6fc560d27bdfacd89a621bf89ed73e3e40f8e86ebdc85b142ddb328dd06a4b5'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  appcast 'https://github.com/boot2docker/osx-installer/releases.atom'
  name 'Boot2Docker'
  homepage 'https://github.com/boot2docker/osx-installer'
  license :apache

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
