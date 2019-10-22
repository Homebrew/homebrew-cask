cask 'qgroundcontrol' do
  version '3.5.5'
  sha256 '9a5af3a0e8008f507de603f7b0dfb3b43d7536e6d7503e4e2cb71ab110695c18'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
