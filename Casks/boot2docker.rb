cask 'boot2docker' do
  version '1.8.0'
  sha256 'b457bd33c046568a7a56ea89256563768b59ebaf5a50827f5e6f8703480dc329'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  appcast 'https://github.com/boot2docker/osx-installer/releases.atom',
          checkpoint: 'd3c65cdfee967e2b947c548ad94a4d9d712ef299b57b8cdd949aea8eecf64a29'
  name 'Boot2Docker'
  homepage 'https://github.com/boot2docker/osx-installer'
  license :apache

  pkg "Boot2Docker-#{version}.pkg"

  uninstall pkgutil: ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
