cask :v1 => 'piezo' do
  version :latest
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Piezo.zip'
  homepage 'http://rogueamoeba.com/piezo/'
  license :unknown

  app 'Piezo.app'
end
