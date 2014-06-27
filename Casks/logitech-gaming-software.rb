class LogitechGamingSoftware < Cask
  version '8.50.133'
  sha256 '1f1930563a6c254fc9ed65e5a6bcfb47c2f7b7395933486aedc5ab71da1a3c01'

  url 'http://logitech-viva.navisite.net/web/ftp/pub/techsupport/gaming/LogitechSetup_8.50.133.dmg'
  homepage 'http://www.logitech.com/en-us/support/gaming-software?section=downloads&bit=&osid=36'

  install 'LogiGamingSetup.mpkg'
  uninstall :script => '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh'
  caveats do
    reboot
  end
end
