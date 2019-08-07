cask 'qgroundcontrol' do
  version '3.5.4'
  sha256 'd51a9f4243eac1fe3b4997d8a807187237f81ea5b2aa122898c7e5c1f5d143e4'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
