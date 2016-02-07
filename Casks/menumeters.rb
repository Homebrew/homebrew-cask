cask 'menumeters' do
  version :latest
  sha256 :no_check

  url 'http://www.ragingmenace.com/software/download/MenuMeters.dmg'
  name 'MenuMeters'
  homepage 'http://www.ragingmenace.com/software/menumeters/'
  license :gpl

  prefpane 'MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
