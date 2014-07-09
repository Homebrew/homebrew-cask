class SqliteDatabaseBrowser < Cask
  version '3.2.0'
  sha256 '77ff563d108dc2bf224b3628172df31238fe2d74d7a2e1954b120463a865c4d8'

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/sqlb-#{version}/sqlitebrowser-#{version}.dmg"
  homepage 'http://sqlitebrowser.org'

  link "SQLite Database Browser #{version}.app"
end
