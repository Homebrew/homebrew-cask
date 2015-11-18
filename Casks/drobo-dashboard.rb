cask :v1 => 'drobo-dashboard' do
  version '2.7.0_77097'
  sha256 'c56a2fd01be607971a8846c7f762ba63169340d73616d84250183daa462d108f'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*},'')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall :script => { :executable => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
                         :sudo => true },
            :pkgutil => 'com.datarobotics.drobodashboard'
end
