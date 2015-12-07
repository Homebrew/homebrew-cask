cask :v1_1 => 'dockertoolbox' do
  version '1.9.1c'
  sha256 '28270114379fc25811d16bb181a955c6177fc21ae2733e5867f5b7432cc2baf6'

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom'
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
