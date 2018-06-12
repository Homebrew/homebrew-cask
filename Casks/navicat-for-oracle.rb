cask 'navicat-for-oracle' do
  version '12.0.27'
  sha256 '42f555c081e8f008a835ba0b6a493c8ac980832dfdce40acf36e94aef3e21f62'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20Oracle"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
