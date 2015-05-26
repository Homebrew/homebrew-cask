cask :v1 => 'piezo' do
  version :latest
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Piezo.zip'
  name 'Piezo'
  homepage 'http://rogueamoeba.com/piezo/'
  license :commercial

  app 'Piezo.app'
end
