cask 'get-iplayer-automator' do
  version '1.15.1.b20190331001'
  sha256 '97e02c14bc9b0cdd96cbdd01c507b574874759c8081d7752cdc0c6bcde6fdefc'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
