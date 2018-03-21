cask 'docker-toolbox' do
  version '18.02.0-ce'
  sha256 'da96d238db4a2467ac3673fe478cfd3dcea62bfc0f1c124ab738b8a3cc964fc6'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '782560456cd45cc9073eb72fcf2d0387c81cfeca05ab886e2ab415af194e849e'
  name 'Docker Toolbox'
  homepage 'https://www.docker.com/products/docker-toolbox'

  depends_on cask: 'virtualbox'

  pkg "DockerToolbox-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choiceDockerComposeCLI',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceDockerQuickstartTerminalAPP',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceKitematicAPP',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceVBox',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'choiceBoot2DockerISO',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

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

  zap trash: '~/.docker'
end
