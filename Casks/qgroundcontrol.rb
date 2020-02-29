cask 'qgroundcontrol' do
  version '3.5.6'
  sha256 'b2de1de91670889f73dbb71841d19cfa1ec376a8fadc206ae9436ef8f89d2d64'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
