cask :v1 => 'intermission' do
  version :latest
  sha256 :no_check

  url 'http://dm.rogueamoeba.com/mirror/files/Intermission.zip'
  name 'Intermission'
  homepage 'http://rogueamoeba.com/intermission/'
  license :commercial

  app 'Intermission.app'
end
