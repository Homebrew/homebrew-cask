cask :v1 => 'mysql-workbench' do
  version '6.3.3'
  sha256 '2ba28b163f88bd6d3a43df8236f351bc43d8fe3d21936424fcb395bb9d56e1a6'

  url "http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-osx-x86_64.dmg"
  name 'mysql-workbench'
  homepage 'http://dev.mysql.com/downloads/workbench/'
  license :gpl
  app 'MySQLWorkbench.app'
end
