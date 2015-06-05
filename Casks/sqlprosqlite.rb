cask :v1 => 'sqlprosqlite' do
  version '1.0.48'
  sha256 '3913c64b75af1d9526258f354a8ec2c7db5f458914b055c82f6d6aa54c848c63'

  url "https://www.sqlitepro.com/downloads/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'
  license :commercial

  app 'SQLProSQLite.app'
end
