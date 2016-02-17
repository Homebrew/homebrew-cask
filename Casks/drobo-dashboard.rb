cask 'drobo-dashboard' do
  version '2.7.1_78171'
  sha256 '7c1fd9b8de4fe1fa430d97b82bea3d86c240fde5d4f9f603d8a1bec45c971562'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  { executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.datarobotics.drobodashboard'
end
