cask :v1 => 'sqlitebrowser' do
  version '3.5.1'
  sha256 '3f588c7400e1e41ffb06b50fe8027e8cf1fdc4dfea75086c82d5dcd9b54e7a38'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/sqlitebrowser-#{version}.dmg"
  name 'DB Browser for SQLite'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :oss

  app 'sqlitebrowser.app'
end
