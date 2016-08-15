cask 'logitech-gaming-software' do
  version '8.83.55'
  sha256 '74da2cd277651ba28a591374d3076842d16d464cf8665598bba5fd271355effc'

  url "http://download01.logitech.com/web/ftp/pub/techsupport/gaming/LogitechSetup_#{version}.zip"
  name 'Logitech Gaming Software'
  homepage 'https://support.logitech.com/en_us/downloads'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'LogitechGamingInstaller.app/Contents/Resources/LogiGamingSetup.mpkg'

  uninstall script:  '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh',
            pkgutil: [
                       'com.logitech.gaming',
                       'com.logitech.lcdmanager',
                     ]

  caveats do
    reboot
  end
end
