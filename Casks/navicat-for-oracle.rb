cask 'navicat-for-oracle' do
  version '12.0.28'
  sha256 'df243be242a1d24c6923db341f612243c8e7efcb3daffd976f029b70e1d253bb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
