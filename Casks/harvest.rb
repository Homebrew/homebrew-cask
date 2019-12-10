cask 'harvest' do
  version '2.1.16'
  sha256 'fb4fa809ed9638b332fc6664db66eb7b360ef9af49a419121810bb033220e85b'

  url "https://www.getharvest.com//harvest/mac/Harvest-#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
