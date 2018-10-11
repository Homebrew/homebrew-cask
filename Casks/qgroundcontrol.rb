cask 'qgroundcontrol' do
  version '3.4.2'
  sha256 '03d9f2cffa5735ee92935974a993273fa60fa44df3a57a02b0f83306f63e7558'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
