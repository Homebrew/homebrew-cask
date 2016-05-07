cask 'airfoil' do
  version '5.0.2'
  sha256 '87aebc5284eaced85a3441efc57d1d4a51dd65dc00b068c6e21988c776f1f6d9'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'aaf36799bceac10c5b282aed1c7eec0c25606f236e27243b19b196f1be85b74d'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
