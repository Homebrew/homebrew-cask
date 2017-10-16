cask 'navicat-for-oracle' do
  version '12.0.15'
  sha256 '51475f5711db126ff22c30abb89db1a4a8a59a92b5261714b79e869d693e1597'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note',
          checkpoint: 'a99e1fbc6fbf4e283183859812b6c4e31ef81598629930d049ddc267cde39ad2'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
