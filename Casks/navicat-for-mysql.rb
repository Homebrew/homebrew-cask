cask 'navicat-for-mysql' do
  version '12.0.14'
  sha256 '77f2814a64953d49d2104b5df88e74277dfe225d59051cb938ba4dafae40a50c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: 'a57241eaa8bb4ddeecfd714bc20713ce9d244914da7ade128d1959c8ee12a4b2'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
