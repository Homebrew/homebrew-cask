cask :v1 => 'mysqlworkbench' do
  version '6.3.5'
  sha256 '7b92e7dc0909f5225bb1d940addd2384d2f1b3d60c3b46a03014bdfc1e95f1ae'

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
