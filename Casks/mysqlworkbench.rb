cask :v1 => 'mysqlworkbench' do
  version '6.2.3'
  sha256 '0a66707a03d83a70f1ced521ac0954ee56ff9a6e86f81e01d03df723755e9186'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-i686.dmg"
  gpg "#{url}.asc",
      :key_id => '8c718d3b5072e1f5'
  homepage 'http://www.mysql.com/products/workbench'
  license :unknown

  app 'MySQLWorkbench.app'
end
