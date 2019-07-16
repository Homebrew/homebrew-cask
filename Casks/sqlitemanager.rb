cask 'sqlitemanager' do
  version '4.8.3'
  sha256 '0e0e99490f45e6145efde46ddc32dd1e131248b024824254579dc7985426793e'

  url 'https://www.sqlabs.com/download/SQLiteManager.zip'
  appcast 'https://www.sqlabs.com/sqlitemanager_version'
  name 'SQLiteManager'
  homepage 'https://www.sqlabs.com/sqlitemanager.php'

  app 'SQLiteManager.app'
end
