cask 'navicat-for-mysql' do
  version '12.0.17'
  sha256 'b119e428faaab56272cab4f1846c32794f794ca2539c6ef8a251ddee3296cae5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note',
          checkpoint: '9c61560177490e622ee7f523e42794e78df4a1168624f98c7ab37187107e37a7'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
