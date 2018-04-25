cask 'docker-toolbox' do
  version '18.03.0-ce'
  sha256 '16ea4d6d8125dfd9dc78492beb3cef6239b87cf568715df8d9efffd63c6a3cfe'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '07cca77f921bcd7492bb4d9b8962358bbe9ec90f198d558f7f517aa5002a4e89'
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
