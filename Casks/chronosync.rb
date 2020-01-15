cask 'chronosync' do
  version '4.9.8'
  sha256 'af52fbc8e762317ed3b38ef7a02d73bb20aacafc05867c587184ba629d295182'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
