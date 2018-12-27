cask 'get-iplayer-automator' do
  version '1.13.19.b20181224001'
  sha256 '92ad8df4a85dd8e2bc0b28e4cae8313f074d9c9d648bc5abc16de85d60c21bdd'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
