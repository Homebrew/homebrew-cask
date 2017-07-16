cask 'navicat-for-oracle' do
  version '12.0.9'
  sha256 '22d6f49b7b7c8c267ac83e082c4ac8424eec3c51d5850eddf153b4ba1a86a89c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: '29d5d6507f2a2ace6777d16f8f5204c7c6fd42145767770ab04d8f389992d553'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
