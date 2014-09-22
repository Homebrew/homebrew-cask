class Mysqlworkbench < Cask
  version '6.1.7'
  sha256 'b5c5d35df4b8099db639622aa49e22c51eb5127858cfa0d41339967554564e08'

  url 'https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-6.1.7-osx-i686.dmg'
  homepage 'http://www.mysql.com/products/workbench'

  app 'MySQLWorkbench.app'
end
