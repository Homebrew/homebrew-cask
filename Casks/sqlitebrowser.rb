cask :v1 => 'sqlitebrowser' do
  version '3.5.0'
  sha256 'e24b4d94e4961c13f0e652cca680361b6193e601a6d39fdd933ccb9e7bb26271'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/sqlitebrowser-#{version}.dmg"
  name 'DB Browser for SQLite'
  name 'SQLite Database Browser'
  homepage 'http://sqlitebrowser.org'
  license :mpl

  app 'sqlitebrowser.app'
end
