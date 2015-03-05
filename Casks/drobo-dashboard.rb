cask :v1 => 'drobo-dashboard' do
  version '2.6.4_72278'
  sha256 '36a2ce104ea86b25db40098677144f3342a9fa7f910d48a59c136a3ca41214c8'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*},'')}.dmg"
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
            :pkgutil => 'com.datarobotics.drobodashboard'
end
