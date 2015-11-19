cask :v1 => 'chronosync' do
  version :latest
  sha256 :no_check

  url 'http://downloads.econtechnologies.com/CS4_Download.dmg'
  name 'ChronoSync'
  homepage 'http://www.econtechnologies.com'
  license :commercial

  pkg 'Install.pkg'

  uninstall :pkgutil => 'com.econtechnologies.pkg.ChronoSyncApplication'
end
