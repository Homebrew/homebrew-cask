cask 'mysqlworkbench' do
  version '6.3.8'
  sha256 '8bcaad64d9971caae23edd018b90537975c615310105dc6b19f8036dca80eef9'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-x86_64.dmg"
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench'
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
