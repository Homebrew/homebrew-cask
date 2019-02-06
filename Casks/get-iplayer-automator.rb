cask 'get-iplayer-automator' do
  version '1.14.3.b20190121001'
  sha256 'a43012955b3ea677b61cd53d9831855a90e4da2c2079d6db7510fe9b33d5a411'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
