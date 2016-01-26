cask 'sqlprosqlite' do
  version '1.0.49c'
  sha256 '7166b9c5ddff7a9b3ec07397767d3c68ba239b1db3706f95f9059ae2ba98f21b'

  url "https://www.sqlitepro.com/downloads/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'
  license :commercial

  app 'SQLProSQLite.app'
end
