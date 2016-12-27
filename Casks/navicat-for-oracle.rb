cask 'navicat-for-oracle' do
  version '11.2.16'
  sha256 'bbc1d84a75d67b9dc29c2ea3030d109d0b0087fbabd68f08dd95a380ae397e73'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
