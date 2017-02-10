cask 'mysqlworkbench' do
  version '6.3.9'
  sha256 'c83473f8f080319736e89c3f47d17eee0e154285e84bb041f53168d9ce2d0b53'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-x86_64.dmg"
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'
  gpg "#{url}.asc", key_id: '8c718d3b5072e1f5'

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
