cask 'harvest' do
  version '2.0.0'
  sha256 '9cdd7353a0a66efb796483fd458d7e413335e4525df04977a74f935dba2a9b3d'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '3e11300e8e201435d008737ca6f03a43229b90446d2318e5fe22f2575e4a6bc6'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
