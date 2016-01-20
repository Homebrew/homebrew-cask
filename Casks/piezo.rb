cask 'piezo' do
  version '1.2.2'
  sha256 '6be59b8b525ddb049a4ee24f40bce06beba5d98c2a6ada6826b9783bad28fb3b'

  url "https://rogueamoeba.com/legacy/downloads/Piezo-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo',
          checkpoint: 'f9a8903cc1e07056cd541257e6d61e65fc4fe653b91d5e732ce8870a46e39f45'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
