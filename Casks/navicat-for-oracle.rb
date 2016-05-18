cask 'navicat-for-oracle' do
  version '11.2.10'
  sha256 'a80cd5d83e7e802a30014ebfdac53f84ff571531e18e2a53bb382b9bfc365c9f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
