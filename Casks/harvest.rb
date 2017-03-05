cask 'harvest' do
  version '2.0.5'
  sha256 'b4a307f22d7f5fa4031cc1a8b1ed0d92f736837ccb99d429383932e00ce4a2f9'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '67f5102e0e5c50a03e51dfac1e829b1a839302f76bf4e65c2014b3460697ffbd'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
