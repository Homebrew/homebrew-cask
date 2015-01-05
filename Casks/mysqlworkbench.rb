cask :v1 => 'mysqlworkbench' do
  version '6.2.4'
  sha256 'f59e366fcad9eae691fddd51ffe89e471b3305c5df7324bb2695fa2b87870ec6'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-i686.dmg"
  name 'MySQL Workbench'
  gpg "#{url}.asc",
      :key_id => '8c718d3b5072e1f5'
  homepage 'http://www.mysql.com/products/workbench'
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
