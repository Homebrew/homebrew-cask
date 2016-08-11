cask 'navicat-for-sqlite' do
  version '11.2.13'
  sha256 '020132376c9c113f4e019d4c44863e812689455111305babac8a06ffdffe25a7'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
