cask 'navicat-for-mysql' do
  version '12.0.15'
  sha256 '11287f9ca018c1b4ce8378dfc25e0f521d5aa96bce5b4132629836924242af50'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note',
          checkpoint: 'b98a0fc35c0bfd95ee348825084a88a6ea92fada77fabd8717f7bdbb00931cfb'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
