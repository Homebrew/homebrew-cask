cask 'airfoil' do
  version '5.5.0'
  sha256 'd31c995c88b44e18347d8462e0f4cc516187ff658064879b4c5ed8492a5830e2'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'fb81edc12b75c2d22af7364287f5f4ef10e9aa7e5470479f106c3cd50a6d846b'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
