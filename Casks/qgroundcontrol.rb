cask 'qgroundcontrol' do
  version '3.5.3'
  sha256 '4f90195a0fd2a85acd803e8249793e5c8961d8d0af5ac3534eba0b156f17912c'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
