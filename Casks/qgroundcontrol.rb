cask 'qgroundcontrol' do
  version '3.5.2'
  sha256 '40c1a16f20c27e28d181dde3bfb58dfb021cfc4a2c0406d04560895501920982'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
