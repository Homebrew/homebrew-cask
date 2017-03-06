cask 'sqlitemanager' do
  version '4.6.8'
  sha256 '52eed9dd1bca69aff6f337c08d29763a0eba90356679ed28fe2f26dc72374f7f'

  url 'http://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'http://www.sqlabs.com/news/sqlitemanager/',
          checkpoint: '5ebb5f2628afcd81bda66a61c9c38964d9b7dbf30db4aa7820bb3e6287be05c7'
  name 'SQLiteManager'
  homepage 'http://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
