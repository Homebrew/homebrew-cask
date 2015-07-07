cask :v1 => 'piezo' do
  version :latest
  sha256 :no_check

  url 'https://neutral.rogueamoeba.com/mirror/files/Piezo.zip'
  name 'Piezo'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo',
          :sha256 => 'c8dc37b74425eb9f11e86989ea9e11ae6878afd3d542516224c7e7b36281ccf3'
  homepage 'https://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
