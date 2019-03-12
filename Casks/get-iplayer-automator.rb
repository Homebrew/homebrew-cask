cask 'get-iplayer-automator' do
  version '1.15.0.b20190302001'
  sha256 'f21648d8cc1048221e70ab6db582051a2f815421cbf1af449b1cc68f74e494b0'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
