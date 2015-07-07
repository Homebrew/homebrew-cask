cask :v1 => 'navicat-for-sqlite' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '72cd4c79d81af9c36b7e6caf484c1b265d8080d5a4f882061f8d2942b63b83d8'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for SQLite.app'
end
