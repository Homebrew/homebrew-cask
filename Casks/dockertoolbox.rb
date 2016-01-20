cask 'dockertoolbox' do
  version '1.9.1i'
  sha256 'dc779545acbd2e668cccffb43f0c9933f506ea7b9e8a86bb89a30b0f2d9bd912'

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '1893c9270f06aab67252d8d9a1a48b05998f4f0d68f503f78ff73358a307667a'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/toolbox'
  license :apache

  depends_on cask: 'virtualbox'

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
