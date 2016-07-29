cask 'mysqlworkbench' do
  version '6.3.7'
  sha256 '06e7c87483b8851fa3c9baa6f784d76a8f099878abebdb56e8c22637b784ca12'

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
