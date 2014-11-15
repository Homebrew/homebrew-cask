cask :v1 => 'fission' do
  version :latest
  sha256 :no_check

  url 'http://neutral.rogueamoeba.com/mirror/files/Fission.zip'
  homepage 'http://rogueamoeba.com/fission/'
  license :unknown

  app 'Fission.app'
end
