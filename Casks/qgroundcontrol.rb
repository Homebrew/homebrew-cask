cask 'qgroundcontrol' do
  version '3.4.0'
  sha256 'cc0a4ca5268edbb2d2ed2490b1b432a93ab61ad3690503b3188fa71af4833694'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
