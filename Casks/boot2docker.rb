cask :v1 => 'boot2docker' do
  version '1.3.2'
  sha256 '76015f0f7bed79989bed7f3bf7597d39ec2efaa93274ce9c5e124f0ca8f31ac6'

  url "https://github.com/boot2docker/osx-installer/releases/download/v#{version}/Boot2Docker-#{version}.pkg"
  homepage 'https://github.com/boot2docker/osx-installer'
  license :oss

  pkg "Boot2Docker-#{version}.pkg"

  uninstall :pkgutil => ['io.boot2docker.pkg.boot2docker', 'io.boot2docker.pkg.boot2dockerapp', 'io.boot2dockeriso.pkg.boot2dockeriso', 'io.docker.pkg.docker']
end
