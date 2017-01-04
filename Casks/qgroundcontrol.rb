cask 'qgroundcontrol' do
  version '3.0.2'
  sha256 'bcbb0be65da45cfd7664ead51cc39a3156ee2a06d7f7e873b4a96996e2ad5e8e'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '528f423edb2b4616833954cbc2d556a8f2f058ec9c6182653a5c1eb3e0022c32'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
