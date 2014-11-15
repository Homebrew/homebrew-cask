cask :v1 => 'drobo-dashboard' do
  version '2.6.3'
  sha256 '8881b0713fed7bb9aeb2c1ca98db3e31ee304de0fad5d05778872e256a78ece1'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version}.dmg"
  homepage 'http://www.drobo.com'
  license :unknown

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"
  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
            :pkgutil => 'com.datarobotics.drobodashboard'
end
