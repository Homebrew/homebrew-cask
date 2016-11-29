cask 'menumeters' do
  version :latest
  sha256 :no_check

  url 'https://www.ragingmenace.com/software/download/MenuMeters.dmg'
  name 'MenuMeters'
  homepage 'https://www.ragingmenace.com/software/menumeters/'

  depends_on macos: '<= :yosemite'

  prefpane 'MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
