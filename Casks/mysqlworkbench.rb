cask :v1 => 'mysqlworkbench' do
  version '6.2.5'
  sha256 '9643084fd71c73766a4ab11e46ca42ad712b371972c725ac635c2dc5f08bfb9b'

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
