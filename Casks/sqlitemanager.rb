cask 'sqlitemanager' do
  version '4.8.0'
  sha256 '80842c378765043bbbc1dc94efbc7232174432503ef04120afe309c132fce5d3'

  url 'https://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'https://www.sqlabs.com/news/sqlitemanager/'
  name 'SQLiteManager'
  homepage 'https://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
