cask 'navicat-for-mysql' do
  version '12.0.10'
  sha256 '2ed01b5e3dbd79db3121084b6f6c3995f4f7002b85ac5dc614ce04219da77703'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: '7a6bc0cd7a00f52b354592effe043f2265365bf59b3deb44498c5383e788f303'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
