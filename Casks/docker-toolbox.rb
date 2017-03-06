cask 'docker-toolbox' do
  version '17.03.0-ce'
  sha256 '5ff784a7915e47881e662ccbdd516eb6ab2cd48f29ec71868850845e586b3d5c'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: 'a8f2fbfb22b07e0d5e28f6b899cd2fbf0ae25cb48c9d4a7b4808e821966095b7'
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
