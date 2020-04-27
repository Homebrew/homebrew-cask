cask 'mysqlworkbench' do
  if MacOS.version <= :high_sierra
    version '6.3.10'
    sha256 '29857bf84bebb7c4442ce147e44602d00f8c001e3c09b3a6e3af356767e08d2c'
  else
    version '8.0.20'
    sha256 'a5c11b83fbcb1817e982eed7a6d170ffca6c67d3a9496817c395c4a60b571cc0'
  end

  url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  appcast 'https://dev.mysql.com/downloads/workbench/'
  name 'MySQL Workbench'
  homepage 'https://www.mysql.com/products/workbench/'

  depends_on macos: '>= :high_sierra'

  app 'MySQLWorkbench.app'

  zap trash: [
               '~/Library/Application Support/MySQL/Workbench',
               '~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist',
               '~/Library/Caches/com.oracle.workbench.MySQLWorkbench',
               '~/Library/Saved Application State/com.oracle.workbench.MySQLWorkbench.savedState',
             ]
end
