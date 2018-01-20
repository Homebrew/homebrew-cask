cask 'docker-toolbox' do
  version '18.01.0-ce'
  sha256 '5a105facedcd24c65548f847af8029956dcc95ee032c0a714df47802ec32c7c7'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '9e40bacc455e8fa9067e8f84341da8cdbb978623e06b710f39005e05394333a0'
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
