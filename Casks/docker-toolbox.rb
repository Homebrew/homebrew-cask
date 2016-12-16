cask 'docker-toolbox' do
  version '1.12.5'
  sha256 '602c7a1a48b830800dae7123bdad32c0d1fc3f10703c5665f368e6c05ffb4d06'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '08a90af4a0cb4d85052ec1069de37d477e0cf4faa2797a3d9b81a6dfed949387'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/products/docker-toolbox'

  pkg "DockerToolbox-#{version}.pkg"

  postflight do
    set_ownership '~/.docker'
  end

  uninstall pkgutil: [
                       'io.boot2dockeriso.pkg.boot2dockeriso',
                       'io.docker.pkg.docker',
                       'io.docker.pkg.dockercompose',
                       'io.docker.pkg.dockermachine',
                       'io.docker.pkg.dockerquickstartterminalapp',
                       'io.docker.pkg.kitematicapp',
                     ]
end
