cask 'airfoil' do
  version '5.1.1'
  sha256 'f794708ad182fcc84cfc3ac77172f3b92bf239c60ef3b96a83607120dd08c67e'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '86a633e65b6d09d78bafd10af4ddf20b44910aae64da7599b8089a2e6da348fb'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
