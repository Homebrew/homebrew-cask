cask :v1 => 'intermission' do
  version :latest
  sha256 :no_check

  url 'http://dm.rogueamoeba.com/mirror/files/Intermission.zip'
  homepage 'http://rogueamoeba.com/intermission/'
  license :unknown    # todo: improve this machine-generated value

  app 'Intermission.app'
end
