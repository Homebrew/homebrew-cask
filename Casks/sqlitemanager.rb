cask 'sqlitemanager' do
  version '4.7.0'
  sha256 '04ba527cb257a6ff20ec86c088e7230d9860260ae37c3c30d8374c95d9d8eaaa'

  url 'https://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'https://www.sqlabs.com/news/sqlitemanager/'
  name 'SQLiteManager'
  homepage 'https://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
