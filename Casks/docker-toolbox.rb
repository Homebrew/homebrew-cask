cask 'docker-toolbox' do
  version '17.06.0a-ce'
  sha256 'ad43de197e15ea040f4f03659b238edc0ac527d5dd2f48a143e4a37d05880e61'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: 'db84562a2bf0cbb02e857ca89e5550bb8b5e1814dedcf2a22a57e92358be8526'
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
