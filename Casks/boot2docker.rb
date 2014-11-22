cask :v1 => 'boot2docker' do
  version '1.3.1'
  sha256 'ed450357209c123a94c6723121ea1d317090e71269a72d7b897882e363902053'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  homepage 'https://github.com/boot2docker/osx-installer'
  license :oss

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
