cask 'navicat-for-oracle' do
  version '12.1.4'
  sha256 '1cd370a236874be12e5696c9ecf92e3b6572ef6694adfd5483d1c33a95c6b6cb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
