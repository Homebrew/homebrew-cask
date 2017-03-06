cask 'harvest' do
  version '2.0.5'
  sha256 'b4a307f22d7f5fa4031cc1a8b1ed0d92f736837ccb99d429383932e00ce4a2f9'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '19df0e212c9cbbd2e18db4ea4c67d6b4af43c72b266c30dcbb97b746ce5030eb'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
