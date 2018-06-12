cask 'harvest' do
  version '2.1.4'
  sha256 'fb6b81f351bcf00d8746483f2b84f752473af897f94274762ed5c6b31256ca47'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
