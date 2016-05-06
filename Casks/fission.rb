cask 'fission' do
  version '2.3.0'
  sha256 'c42586b8a0e3dca0c0dc5560b8d609f3db494de64fb6f4ea7acc63fe9c13f8ef'

  url 'http://rogueamoeba.com/fission/download.php'
  appcast 'http://rogueamoeba.com/fission/releasenotes.php',
          checkpoint: 'ba8812044685f30aa4e04052d0a3222b731b7f60f818cd25897461f67468760d'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'
  license :commercial

  app 'Fission.app'
end
