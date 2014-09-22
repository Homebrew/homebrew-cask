class Ccmenu < Cask
  version '1.7'
  sha256 '974a2022dbc9494958334ee8f02e08df7ed184e1f421a53d623dfbeaadf08a2c'

  url "https://downloads.sourceforge.net/project/ccmenu/CCMenu/#{version}/ccmenu-#{version}-b.dmg"
  appcast 'http://ccmenu.sourceforge.net/update-stable.xml'
  homepage 'http://ccmenu.sourceforge.net/'

  app 'CCMenu.app'
end
