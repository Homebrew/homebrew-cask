cask 'fission' do
  version '2.3.0'
  sha256 'bef0622d1868f443257d537a64f2ff77d4c0b1db81764ea9901821b2f31b1405'

  url 'http://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'http://rogueamoeba.com/fission/releasenotes.php',
          checkpoint: 'ba8812044685f30aa4e04052d0a3222b731b7f60f818cd25897461f67468760d'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'
  license :commercial

  app 'Fission.app'
end
