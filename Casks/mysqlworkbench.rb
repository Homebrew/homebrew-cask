cask 'mysqlworkbench' do
  version '6.3.6'
  sha256 '81732bddff9e9d6b71cc565e4d3b4636e0e47db5b344aaef4b7e20c83177d94a'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-x86_64.dmg"
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench'
  license :gpl
  gpg "#{url}.asc",
      key_id: '8c718d3b5072e1f5'

  app 'MySQLWorkbench.app'

  zap delete: [
                '~/Library/Application Support/MySQL/Workbench',
                '~/Library/Preferences/com.oracle.mysql.workbench.plist',
                '~/Library/Preferences/com.oracle.MySQLWorkbench.plist',
                '~/Library/Saved Application State/com.oracle.mysql.workbench.savedState',
                '~/Library/Saved Application State/com.oracle.MySQLWorkbench.savedState',
                '~/Library/Caches/com.oracle.mysql.workbench',
              ]
end
