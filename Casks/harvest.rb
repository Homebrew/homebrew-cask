cask 'harvest' do
  version '1.5.0'
  sha256 '5da1268df4ab1146e547b720126db5a9b669e33099b86e98c5d09f70b15b5ee7'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '85c3a4977e5dc314f9f1e37f96e5c142648e018db08ba65dc70e69f5529517e3'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
