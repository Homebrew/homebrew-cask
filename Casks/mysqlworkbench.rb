cask 'mysqlworkbench' do
  version '6.3.10'
  sha256 '29857bf84bebb7c4442ce147e44602d00f8c001e3c09b3a6e3af356767e08d2c'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
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
