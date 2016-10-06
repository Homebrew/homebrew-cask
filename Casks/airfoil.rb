cask 'airfoil' do
  version '5.1.3'
  sha256 'a723c0bedbe2a36bf37a662eb8ed03f832f02d2b75c0e0705216ff8624fd09cf'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'e36b4efa89de8b3dd0b2da676815b7af01e74b6835b4e525ac020bb8b7bbbe74'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
