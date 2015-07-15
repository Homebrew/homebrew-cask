cask :v1 => 'boot2docker' do
  version '1.7.1'
  sha256 '80658f99d0448793bfa7a35d8cdf9a368b4977f7a9977c9b375f6adab45cadaf'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  appcast 'https://github.com/boot2docker/osx-installer/releases.atom'
  name 'Boot2Docker'
  homepage 'https://github.com/boot2docker/osx-installer'
  license :apache

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
