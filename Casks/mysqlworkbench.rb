cask 'mysqlworkbench' do
  version '8.0.16'
  sha256 '3478800290e2797d294e3721fdaea4c41ddc1917f2b59ec94a935e16c18dc5d2'

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  appcast 'https://dev.mysql.com/downloads/workbench/'
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
