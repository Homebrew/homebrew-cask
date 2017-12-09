cask 'qgroundcontrol' do
  version '3.2.5'
  sha256 '246ab87302945861782230ddc5f171e5f226d728ff7974a2628230045f6c860f'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '74f3d5dd1fc403aeef01d151d8960d0db72ea24c3a7e0cd1957adff2f033c43e'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
