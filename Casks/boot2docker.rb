cask :v1 => 'boot2docker' do
  version '1.3.0'
  sha256 'db53c4a777ced0430fac728e9f28280e610ce0c67cdfa38105414506eae3959e'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  homepage 'https://github.com/boot2docker/osx-installer'
  license :oss

  pkg "Boot2Docker-#{version}.pkg"
  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
