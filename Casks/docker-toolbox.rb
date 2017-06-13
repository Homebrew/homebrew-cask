cask 'docker-toolbox' do
  version '17.05.0-ce'
  sha256 'd9037839c205764f4bbaddbf13d8c5b01fd6be4d9cf0934414c8e2e489e45ee2'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: 'c0f4881ca0315682c104f6e6a7ae3783fb0cb9dc2e9df1efdd28a337ecdbf243'
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
