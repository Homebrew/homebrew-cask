cask 'mysqlworkbench' do
  version '8.0.14'
  sha256 '67c21adbf18a99d50c5afd1d3eb1a8606f2dc7c8a243a1a992af2951c8661eaf'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'

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
