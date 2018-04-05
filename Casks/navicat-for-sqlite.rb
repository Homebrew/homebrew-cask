cask 'navicat-for-sqlite' do
  version '12.0.24'
  sha256 '04be3bdb6bff8ac0b4eaf7eb701ab6266d479a5f5c03b9ab4b8435e32d5721d9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: 'fb73e63b981a356abd81935213e3162f03c623fdd777df0f27a725b2ed8e874f'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
