cask 'drobo-dashboard' do
  version '2.8.3_83912'
  sha256 'd2f3ba1320ffebe2b7c01cb0dd9e2bf3c18498891ed47793ffb83d88d7c685e5'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  { executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.datarobotics.drobodashboard'
end
