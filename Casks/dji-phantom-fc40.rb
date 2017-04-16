class DjiPhantomFc40 < Cask
  version '2.20'
  sha256 :no_check

  url 'http://download.dji-innovations.com/downloads/nazam-v2/NAZAM_2.20_Installer.dmg'
  homepage 'http://www.dji.com/product/phantom-fc40/download'

  app 'NAZAM.app', :target => 'Phantom FC40 NAZAM.app'

end
