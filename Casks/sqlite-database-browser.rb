class SqliteDatabaseBrowser < Cask
  version '3.3.1'
  sha256 '0f326309c283a460b28f437d780e05bee8a40d6dc95a32e393f531493d3e8aff'

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/sqlitebrowser-#{version}.dmg"
  homepage 'http://sqlitebrowser.org'

  link "sqlitebrowser.app"
end
