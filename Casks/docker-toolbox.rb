cask 'docker-toolbox' do
  version '1.12.2'
  sha256 'f1654ba0456dbab97f3fce4df3458f3cf4d99e97bde47c17c76c55ee1ad4c966'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: 'ff9aa60d8a337b81ef26761aad44727522b567306751ec59422372489eb798a0'
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
