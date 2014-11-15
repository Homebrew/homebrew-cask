cask :v1 => 'navicat-for-postgresql' do
  version '11.1.5'
  sha256 'd266ae7584575ef24713bb03564e217a07996c5624af9c3890deab6c031f7b47'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_pgsql_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
