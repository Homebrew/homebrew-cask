cask 'navicat-for-oracle' do
  version '11.2.6'
  sha256 '1e29b0d87ac45e9a6328ac92008b15c2311aca87a0ab1f6d2949db64af07a736'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
