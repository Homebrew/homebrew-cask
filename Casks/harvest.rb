cask 'harvest' do
  version '2.1'
  sha256 '31df9348c49ba8e9a8bb5b50afdb1ecbaf74c0e444a07b6bc9b3404c343c4bdb'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: 'b1b24ab03e3abdb4f8fbbe2bda894988c2abfd863fa5da4827f67c3886b5fe99'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
