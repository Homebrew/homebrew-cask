cask :v1 => 'drobo-dashboard' do
  version '2.6.5_73026'
  sha256 '60c5b932f14a0f3f16eb408251453eb3d32d232263ced9b05ebe5e456878dbbc'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*},'')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
            :pkgutil => 'com.datarobotics.drobodashboard'
end
