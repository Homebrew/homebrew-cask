cask :v1 => 'menumeters' do
  version :latest
  sha256 :no_check

  url 'http://www.ragingmenace.com/software/download/MenuMeters.dmg'
  homepage 'http://www.ragingmenace.com/software/menumeters/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane'

  zap :delete => '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
