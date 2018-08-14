cask 'navicat-for-oracle' do
  version '12.1.5'
  sha256 '0e0ed6d11d16edd40ecc10933caa18de480a70a5dadae5a72932477ddb6e1b8d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
