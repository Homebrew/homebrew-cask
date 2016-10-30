cask 'docker-toolbox' do
  version '1.12.3'
  sha256 'c09e0dea7805bd1a34076d46fce063911096af73db9e1467634769492148e09b'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '02197247d526f9d9ba62dfc9d5d8a8d6147d2451cec5fd9e6d17278c650d9900'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/toolbox'

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
