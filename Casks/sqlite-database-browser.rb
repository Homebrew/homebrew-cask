class SqliteDatabaseBrowser < Cask
  version '3.3.1'
  sha256 '14fce5d0df8c06e355aba526f256fd69c7f32e277506add4406c66e4714325eb'

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/sqlitebrowser-#{version}v2.dmg"
  homepage 'http://sqlitebrowser.org'

  app "sqlitebrowser.app"
end
