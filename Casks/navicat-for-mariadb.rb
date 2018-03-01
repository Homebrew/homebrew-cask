cask 'navicat-for-mariadb' do
  version '12.0.23'
  sha256 '073f84f5140093c0c3cdafa5c3794a539370c0512a33c9a64d417c7453dcc90a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: '7f3443223f0b97327f291d415c28671ef9290f70ddb3801a336a2f13ebd0f1dc'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
