cask 'docker-toolbox' do
  version '1.12.1'
  sha256 '43b8073295bb8c9c81963bbd3cb7f8821dc2139c22f5a26deb979a93519e0b2b'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '0fbea9f72534c0621f9ec6559776c324c4cf333c3403f1a77da426f8cd35f68d'
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
