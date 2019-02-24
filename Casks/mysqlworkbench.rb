cask 'mysqlworkbench' do
  version '8.0.15'
  sha256 'bc888ed496cd5a654b63dee655117511349b03f1fc10679f4ec158ab1a0475b7'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'

  depends_on macos: '>= :high_sierra'

  app 'MySQLWorkbench.app'

  zap trash: [
               '~/Library/Application Support/MySQL/Workbench',
               '~/Library/Preferences/com.oracle.mysql.workbench.plist',
               '~/Library/Preferences/com.oracle.MySQLWorkbench.plist',
               '~/Library/Saved Application State/com.oracle.mysql.workbench.savedState',
               '~/Library/Saved Application State/com.oracle.MySQLWorkbench.savedState',
               '~/Library/Caches/com.oracle.mysql.workbench',
             ]
end
