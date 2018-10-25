cask 'mysqlworkbench' do
  version '8.0.13'
  sha256 '48d8d9338399cd2af16c8823a57a897c38099f8cb726061f09f26391ddfb1836'

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
