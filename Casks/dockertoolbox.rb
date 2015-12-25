cask 'dockertoolbox' do
  version '1.9.1f'
  sha256 '32bb5325f99ec0fbd42295565b48756ab2c8bedb02bc1c8a8cff7b70b90591c0'

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          :sha256 => '5226300f0a706a3cb20d7b42d4445fc1be59d77475fb7a267fa6c2baf145b982'
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
