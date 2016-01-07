cask 'dockertoolbox' do
  version '1.9.1f'
  sha256 '32bb5325f99ec0fbd42295565b48756ab2c8bedb02bc1c8a8cff7b70b90591c0'

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          :sha256 => 'eb915af410a4b9a12665e34503cab42e0b859a6519f47aafb78b1f20e8bfe5a0'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/toolbox'
  license :apache

  depends_on :cask => 'virtualbox'

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
end
