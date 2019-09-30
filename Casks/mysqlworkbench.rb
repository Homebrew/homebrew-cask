cask 'mysqlworkbench' do
  version '8.0.17'
  sha256 '1f5c82dce05e0de1bf03b4d7041a0d2e921914068d82b5b1432bbca3074ffb53'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  appcast 'https://dev.mysql.com/downloads/workbench/'
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'

  depends_on macos: '>= :mojave'

  app 'MySQLWorkbench.app'

  zap trash: [
               '~/Library/Application Support/MySQL/Workbench',
               '~/Library/Preferences/com.oracle.mysql.workbench.plist',
               '~/Library/Preferences/com.oracle.MySQLWorkbench.plist',
               '~/Library/Saved Application State/com.oracle.mysql.workbench.savedState',
               '~/Library/Saved Application State/com.oracle.MySQLWorkbench.savedState',
               '~/Library/Caches/com.oracle.mysql.workbench',
             ]
end
