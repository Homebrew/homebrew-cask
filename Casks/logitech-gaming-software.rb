cask 'logitech-gaming-software' do
  version '8.60.313'
  sha256 'f83d5c573fc4236454471158d88153cb970996211b1cbd27180f906fccc7d9c1'

  url "http://download01.logitech.com/web/ftp/pub/techsupport/gaming/LogitechSetup_#{version}.zip"
  name 'Logitech Gaming Software'
  homepage 'http://support.logitech.com/en_us/downloads'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'LogiGamingSetup.mpkg'

  uninstall script:  '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh',
            pkgutil: [
                       'com.logitech.gaming',
                       'com.logitech.lcdmanager',
                     ]

  caveats do
    reboot
  end
end
