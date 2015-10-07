cask :v1 => 'piezo' do
  version :latest
  sha256 :no_check

  url 'https://neutral.rogueamoeba.com/mirror/files/Piezo.zip'
  name 'Piezo'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo',
          :sha256 => 'f9a8903cc1e07056cd541257e6d61e65fc4fe653b91d5e732ce8870a46e39f45'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
