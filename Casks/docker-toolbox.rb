cask 'docker-toolbox' do
  version '17.06.2-ce'
  sha256 '8cb8d05869124d80788a8163ae124cffea6bc05aa69596f0dbe85edc4b88f700'

  # github.com/docker/toolbox was verified as official when first introduced to the cask
  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg"
  appcast 'https://github.com/docker/toolbox/releases.atom',
          checkpoint: '45252ce7f240adb6f1df6e249367ec8cfe83c808ec6f01e960c40a9567e00ec5'
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
