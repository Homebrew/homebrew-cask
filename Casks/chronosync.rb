cask 'chronosync' do
  version '4.8.7'
  sha256 '04ab013aea545632194c622a0dcd680c8c53e8f5ccee97e42d77bbc6c0214b60'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast 'https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=4.8.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1'
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
