cask :v1 => 'sqlprosqlite' do
  version '1.0.46b'
  sha256 '9078913e28eab8b6de1804cff6a6d86e737daa3e7c20912e669bc38192162060'

  url "https://www.sqlitepro.com/downloads/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'
  license :commercial

  app 'SQLProSQLite.app'
end
