cask 'navicat-for-mysql' do
  version '12.1.24'
  sha256 '8c3500d98ed49b655147164e7536c55abfc49da9d3f00f4ca2fadfa2efe197f9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
