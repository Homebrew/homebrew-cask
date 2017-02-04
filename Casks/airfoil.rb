cask 'airfoil' do
  version '5.5.2'
  sha256 '75f5c43906be8a08c22ac5197b34f51c14d16f9365d695697da06015feae2dcb'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: '5d1f4aa7e02f40487ddf74878af538bb516d7abeca76ff4a0c378c77fa4946da'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
