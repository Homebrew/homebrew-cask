cask 'airfoil' do
  version '5.0.0'
  sha256 '1d5b83ae81fcaa33dcba7087d04de56829fd9ae18fc53c1cdb3252726889b8a6'

  # d2oxtzozd38ts8.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'c054284d0cb3c8054783401522cadcb4b3e6c0b1d6897addeecf7cd9712b66d5'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
