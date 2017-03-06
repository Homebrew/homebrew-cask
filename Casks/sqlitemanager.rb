cask 'sqlitemanager' do
  version :latest
  sha256 :no_check

  url 'http://www.sqlabs.com/download/SQLiteManager.zip'
  name 'SQLiteManager'
  homepage 'http://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
