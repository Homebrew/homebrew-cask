cask 'piezo' do
  version '1.5.4'
  sha256 'e06d4c9e4234ecb8623076b176e8c48c32d26138dc62b6c99eced2045311f50f'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: '58f6ae1b8daaacbc537e89486351f886706e2868da3f2fc1a0309a00d1dbf72e'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
