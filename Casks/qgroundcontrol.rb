cask 'qgroundcontrol' do
  version '3.5.0'
  sha256 '0c6eb7316e895bef1b56981156ce154f6809fcd1094b8ba163ab9024612ea56d'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
