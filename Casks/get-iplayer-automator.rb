cask 'get-iplayer-automator' do
  version '1.13.9.b20180615001'
  sha256 '6835b6157395971a0c6476c87f96701f7f4a0ef0a163b0a2c6163e1eec1d9adf'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
