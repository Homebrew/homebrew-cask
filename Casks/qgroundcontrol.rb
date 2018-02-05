cask 'qgroundcontrol' do
  version '3.2.7'
  sha256 '14d2cd2487554b89461e60a0bff4f335ae847927a40918944092a4ed09fe1e77'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: 'd60cb67da1483476a59806fe7a8b45ba6d1d9fb54f9508f875c933f6d253d396'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
