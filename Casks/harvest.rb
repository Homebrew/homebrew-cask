cask 'harvest' do
  version '1.5.0'
  sha256 '5da1268df4ab1146e547b720126db5a9b669e33099b86e98c5d09f70b15b5ee7'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '06b5bfd9c17d5a9730d3d1dfea9cea05cd43fbf032b4d4346fdbf616766aef80'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
