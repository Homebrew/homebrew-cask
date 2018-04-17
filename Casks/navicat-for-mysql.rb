cask 'navicat-for-mysql' do
  version '12.0.24'
  sha256 'd756542ba0bbe548ed3811b4f50115b33ad919dba58051b45d62f090425bd9bf'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: 'd226beefb69d8f66801530be0a696417ee048c897d73c7a5d7d7d93ecffb4fa9'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
