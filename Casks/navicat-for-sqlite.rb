cask 'navicat-for-sqlite' do
  version '12.0.26'
  sha256 '43d6288c4ebed50b0ebda05f19deedb75860708e26485dd77309ab9e7f3c4f42'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20SQLite",
          checkpoint: '677eaba5a4ea476404cb3581b731a6087dcea99c8f9650924b5b414e9d38e0d3'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
