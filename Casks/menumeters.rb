class Menumeters < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.ragingmenace.com/software/download/MenuMeters.dmg'
  homepage 'http://www.ragingmenace.com/software/menumeters/'

  prefpane 'MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane'
end
