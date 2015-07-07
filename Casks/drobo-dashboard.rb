cask :v1 => 'drobo-dashboard' do
  version '2.6.9_74648'
  sha256 '7a54e0c63424aa01090ccf069ca458596a9afb5f0f71ab1ca00bbd7c9c206218'

  url "http://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.sub(%r{_.*},'')}.dmg"
  name 'Drobo Dashboard'
  homepage 'http://www.drobo.com'
  license :gratis

  pkg "Install.app/Contents/Drobo_Dashboard_Installer_#{version}.pkg"

  uninstall :script => 'Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh',
            :pkgutil => 'com.datarobotics.drobodashboard'
end
