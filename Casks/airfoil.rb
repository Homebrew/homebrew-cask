cask 'airfoil' do
  version '5.1.0'
  sha256 'b8b7ed75fea5847491dfaaf95595f739e6f22505951dc30442bff0baa7a2ebce'

  url 'https://rogueamoeba.com/airfoil/download/Airfoil.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx',
          checkpoint: 'c2562799fd857bcdc9f877f0cf426b793e3ac298a041a1b7c748694869b3d875'
  name 'Airfoil'
  homepage 'https://www.rogueamoeba.com/airfoil/mac/'
  license :commercial

  app 'Airfoil/Airfoil Satellite.app'
  app 'Airfoil/Airfoil.app'
end
