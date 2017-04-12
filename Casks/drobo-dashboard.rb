cask 'drobo-dashboard' do
  version '3.0.1_89480'
  sha256 'bfadd6f29285a1645c0b05b50e77136d4e7fde48abcd8f3b022b72217fc351ed'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*}, '')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com/'

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall script:  {
                       executable: 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.datarobotics.drobodashboard'
end
