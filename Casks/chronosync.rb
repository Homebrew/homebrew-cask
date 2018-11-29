cask 'chronosync' do
  version '4.9.0'
  sha256 'ce2d909ffaec10f23235b421e67b55c5847d4d10cbc176f136435239f7eb5d1e'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
