cask 'logitech-gaming-software' do
  version '8.79.45'
  sha256 '7385e438a7bf3956f05e8420b723b5e1a0b0502c308b075419dde5552c593f55'

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
