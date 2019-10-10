cask 'get-iplayer-automator' do
  version '1.16.1.b20191008001'
  sha256 '616702b1830f30ff34dea6b0d5adf1fee4f06f676ee0326597f587dec32112bd'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
