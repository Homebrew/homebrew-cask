class DroboDashboard < Cask
  version '2.5.3'
  sha256 '3e17cc8d55c62ab3676628abb783c3f11d686f5bba064e64609294af449bc949'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version}.dmg"
  homepage 'http://www.drobo.com'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"
  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
            :pkgutil => 'com.datarobotics.drobodashboard'
end
