cask 'drobo-dashboard' do
  version '2.8.1_80644'
  sha256 '680c9e9db80dc7f1555ce85eb34723cf8f01447794347cdf850352095ff2d5e4'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  { executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.datarobotics.drobodashboard'
end
