cask 'navicat-for-mysql' do
  version '12.0.19'
  sha256 '1ff2c3c7755a8f3151e14cb3b1ab3b6911a2145cfc4f12a3d7696b76f2e5c6c5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: '727d30bc018771deea10d6fb3480f7424ee6e41055bd7a2f5aa1a8bc88a7a4e3'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
