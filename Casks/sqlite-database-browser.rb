class SqliteDatabaseBrowser < Cask
  version '3.2.0'
  sha256 '4f89640ffecf6e663554e07987dc6d555929f9e8c0db55b22824d7025fdc8b97'

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/sqlb-#{version}/sqlitebrowser-#{version}.dmg"
  homepage 'http://sqlitebrowser.org'

  link "sqlitebrowser.app"
end
