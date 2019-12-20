cask 'chronosync' do
  version '4.9.7'
  sha256 'b7e86eda90010050e4855d4f96ee0e97201e8fb8f65a418eec140f303aaa1422'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
