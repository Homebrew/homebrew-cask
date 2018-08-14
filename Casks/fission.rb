cask 'fission' do
  version '2.4.2'
  sha256 'daaddae2ecbb65154f432aa0ba418b1a1e958ee645e43d90c52b3a21b4752eea'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.com/fission/releasenotes.php'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
