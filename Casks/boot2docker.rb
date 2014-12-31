cask :v1 => 'boot2docker' do
  version '1.4.1'
  sha256 'c6e5b4a065dbdaab05948cef74b8ad3acc3c3ccddc8c4189dd396b310f8ca0e9'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  homepage 'https://github.com/boot2docker/osx-installer'
  license :oss

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
