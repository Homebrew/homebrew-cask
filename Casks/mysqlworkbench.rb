cask 'mysqlworkbench' do
  version '8.0.17'
  sha256 '1f5c82dce05e0de1bf03b4d7041a0d2e921914068d82b5b1432bbca3074ffb53'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  appcast 'https://dev.mysql.com/downloads/workbench/'
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'

  depends_on macos: '>= :high_sierra'

  app 'MySQLWorkbench.app'

  zap trash: [
               '~/Library/Application Support/MySQL/Workbench',
               '~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist',
               '~/Library/Caches/com.oracle.workbench.MySQLWorkbench',
               '~/Library/Saved Application State/com.oracle.workbench.MySQLWorkbench.savedState',
             ]
end
