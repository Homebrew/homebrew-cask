cask 'navicat-for-oracle' do
  version '12.1.3'
  sha256 '3b2e3c8d56099ceaffbe1f6a536537b245c2d916216a4265925770c8cf8b49e5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
