class DroboDashboard < Cask
  url 'http://www.drobo.com/start/download/dashboard/Drobo-Dashboard-installer-2.5.2.dmg'
  homepage 'http://wwww.drobo.com'
  version '2.5.2'
  sha256 'c743c5ac08a8cbed2d9ce8d143449463cd3788243ad0814b5a13a44ee931e234'
  install 'Install.app/Contents/Drobo_Dashboard_Installer_2.5.2.pkg'
  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh'
end
