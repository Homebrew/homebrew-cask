cask 'navicat-for-oracle' do
  version '12.0.26'
  sha256 'ef78fe563d4fc46e36f3aff801707accb4386f41a4a467974c10bd0c4e83e916'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: 'd1f070aada292babc4ae27169447e089f0d1eb59f6e42321af6298ef7b8693a2'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
