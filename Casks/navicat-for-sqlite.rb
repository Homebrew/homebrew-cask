cask 'navicat-for-sqlite' do
  version '11.2.5'
  sha256 'acbc76dbfebe476de97780e061b8c10dd96b634fbe0410922035391082268eac'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
