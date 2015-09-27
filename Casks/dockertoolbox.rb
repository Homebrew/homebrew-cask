cask :v1_1 => 'dockertoolbox' do
  version '1.8.2b'
  sha256 'bcfbcf2556feb94387d9189b8eb85c203eb3e2e4d15af1220a82cbb9ab9a4002'

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
