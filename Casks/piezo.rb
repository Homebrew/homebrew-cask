cask :v1 => 'piezo' do
  version :latest
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Piezo.zip'
  homepage 'http://rogueamoeba.com/piezo/'
  license :unknown    # todo: improve this machine-generated value

  app 'Piezo.app'
end
