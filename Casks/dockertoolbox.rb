cask :v1_1 => 'dockertoolbox' do
  version '1.9.1'
  sha256 '6af31c80af801b59fc7d83107d3d00e88ccd1d78a5b8a0231b06828e79386342'

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
