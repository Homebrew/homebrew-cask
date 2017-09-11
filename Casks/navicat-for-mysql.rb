cask 'navicat-for-mysql' do
  version '12.0.13'
  sha256 '9b69651d2a2e97ec3e1093f87c864298735c3680d7334b33d2ea057d6df26b44'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: '461ab64daf06e4b4ab8093f39978b0792e71c6a263a4580c5cc194e694d67310'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
