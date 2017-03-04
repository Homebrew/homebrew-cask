cask 'docker-toolbox' do
  version '1.13.1a'
  sha256 '44fa59b71f961056b255426fb9487933282d895d3920ba13a41f533b6c190e7c'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: 'f36fe3efd4c54d75a8a9ef44a626c40ab00adecd46e213bdc1bfcce6be13df96'
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
