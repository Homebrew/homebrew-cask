class Mysqlworkbench < Cask
  version '6.2.3'
  sha256 '0a66707a03d83a70f1ced521ac0954ee56ff9a6e86f81e01d03df723755e9186'

  url 'https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-6.2.3-osx-i686.dmg'
  homepage 'http://www.mysql.com/products/workbench'

  app 'MySQLWorkbench.app'
end
