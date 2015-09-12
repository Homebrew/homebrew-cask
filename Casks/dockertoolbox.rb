cask :v1 => 'dockertoolbox' do
  version '1.8.2'
  sha256 '282fe6d3d0d719d79e6518aad1e4c744e70905618b0873fe93352eb832b54e8d'

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/toolbox'
  license :apache

  pkg "DockerToolbox-#{version}.pkg"

  postflight do
    set_ownership '~/.docker'
  end

  uninstall :pkgutil => [
                         'io.boot2dockeriso.pkg.boot2dockeriso',
                         'io.docker.pkg.docker',
                         'io.docker.pkg.dockercompose',
                         'io.docker.pkg.dockermachine',
                         'io.docker.pkg.dockerquickstartterminalapp',
                         'io.docker.pkg.kitematicapp',
                        ]

  depends_on :cask => 'virtualbox'
end
