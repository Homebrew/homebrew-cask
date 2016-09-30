cask 'airfoil' do
  version '5.1.2'
  sha256 '34251eeb95d6faffc83005708feb79c95cf297bba68092f931ec6e511de3b3e0'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'f0aaf45c9b315219c2e453874e41524347bd9d6977e17f58322998029a9f0fe9'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
