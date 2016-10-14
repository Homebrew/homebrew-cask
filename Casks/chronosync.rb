cask 'chronosync' do
  version :latest
  sha256 :no_check

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
