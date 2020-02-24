cask 'get-iplayer-automator' do
  version '1.18.2,b20200218001'
  sha256 'd1f40f5854e07a43521251e9cf84bccb4c4392b97140fddd7aca3852ae9d1dd0'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          configuration: version.before_comma
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
