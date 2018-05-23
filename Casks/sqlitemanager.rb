cask 'sqlitemanager' do
  version '4.7.0'
  sha256 '04ba527cb257a6ff20ec86c088e7230d9860260ae37c3c30d8374c95d9d8eaaa'

  url 'http://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'http://www.sqlabs.com/news/sqlitemanager/',
          checkpoint: '1de5a44f6fc96af58f8f057eb0bb7a61f4ec39c44f12b9cf9ab3244d70a27ef6'
  name 'SQLiteManager'
  homepage 'http://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
