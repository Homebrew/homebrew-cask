cask 'navicat-for-oracle' do
  version '12.0.14'
  sha256 '392fa02858bef21c8deb65c947d8d80f53e37d0ee008552af2489dc72c73adf2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: 'a127175298b63f7b4266109feb0c131b04d6ddc4c17225319a7fb7c67c49c5a5'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
