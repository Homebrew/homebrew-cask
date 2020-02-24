cask 'chronosync' do
  version '4.9.9'
  sha256 '39133ad9ba812efe2a2d0740ca2f85b0d79c07251805363a5bc3b790affc2b6e'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
