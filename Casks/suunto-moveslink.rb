cask 'suunto-moveslink' do
  version '1.0.66'
  sha256 '5897fe23239a4400f9f23929f2eadcc424bdc5f3f3b3da74a1c17b8ec778997c'

  url 'http://content.static.movescount.com/downloads/Moveslink_setup_1_0_66.dmg'
  name 'Suunto Moveslink'
  homepage 'http://www.movescount.com/connect/moveslink?os=mac'

  pkg 'Moveslink_setup.pkg'

  uninstall pkgutil: 'com.suunto.moveslink.moveslink.pkg'
end
