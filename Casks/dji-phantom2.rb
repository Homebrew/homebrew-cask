class DjiPhantom2 < Cask
  version '3.2'
  sha256 :no_check

  url 'http://download.dji-innovations.com/downloads/phantom_2/Phantom_2_Installer_v3.2.dmg'
  homepage 'http://www.dji.com/product/phantom-2-vision/download'

  app 'Phantom.app', :target => 'Phantom 2.app'

end
