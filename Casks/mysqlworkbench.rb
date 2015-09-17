cask :v1 => 'mysqlworkbench' do
  version '6.3.4'
  sha256 'af214391dfc9c6bdb7640bf286732ce7d4500721906d9a0ad3b107db8f15e57a'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-x86_64.dmg"
  name 'MySQL Workbench'
  gpg "#{url}.asc",
      :key_id => '8c718d3b5072e1f5'
  homepage 'https://www.mysql.com/products/workbench'
  license :gpl

  app 'MySQLWorkbench.app'

  zap :delete => [
                  '~/Library/Application Support/MySQL/Workbench',
                  '~/Library/Preferences/com.oracle.mysql.workbench.plist',
                  '~/Library/Preferences/com.oracle.MySQLWorkbench.plist',
                  '~/Library/Saved Application State/com.oracle.mysql.workbench.savedState',
                  '~/Library/Saved Application State/com.oracle.MySQLWorkbench.savedState',
                  '~/Library/Caches/com.oracle.mysql.workbench'
                 ]
end
