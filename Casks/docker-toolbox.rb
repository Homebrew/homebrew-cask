cask 'docker-toolbox' do
  version '17.12.0-ce'
  sha256 'ee37758df0ce3ba7b93ddd6ce2eae6dd3f6ee6ea1deb425922cbd9c560ba18bd'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '671f5c177fcc4671910dd4bd8bf9880b4681951130304bbe6b908025a621313d'
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
