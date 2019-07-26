cask 'chronosync' do
  version '4.9.3'
  sha256 '3a99ac0e514b8a7cc065d4a87dea30da3f871962f0e7a5dece1aa50dd6c7a6cd'

  url 'https://downloads.econtechnologies.com/CS4_Download.dmg'
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name 'ChronoSync'
  homepage 'https://www.econtechnologies.com/'

  pkg 'Install.pkg'

  uninstall pkgutil: 'com.econtechnologies.pkg.ChronoSyncApplication'
end
