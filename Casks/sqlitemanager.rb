cask 'sqlitemanager' do
  version '4.8.1'
  sha256 '166ff007b15ee28ee3b41038d67b7b829b44481be263916f83307384cf6a48ba'

  url 'https://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'https://www.sqlabs.com/news/sqlitemanager/'
  name 'SQLiteManager'
  homepage 'https://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
