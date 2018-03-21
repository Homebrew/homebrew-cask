cask 'get-iplayer-automator' do
  version '1.10.0.b20180226001'
  sha256 'e18fb10056f11b0f1bbf744ea5392873c81a8d261832f85b57ae40e17e627e80'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '98b5fc7f387fb76612aee58f9d2b66328e536b94121b1ecf80cbbf5bbdb02088'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
