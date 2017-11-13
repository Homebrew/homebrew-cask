cask 'navicat-for-oracle' do
  version '12.0.18'
  sha256 '69427cd14a792bba89abb677e696d3802754db7c9c14ac222c5779143527c407'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: '52046f97fa476cfaa11eda18ebb34bc77884f7647529927bf3f4547f0e76e4dc'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
