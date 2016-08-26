cask 'mysql-utilities' do
  version '1.6.4'
  sha256 '31253329cbecefd376da59f4a6c0c7f71200c323585dedf8320f008cb41e1265'

  url "http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-#{version}-osx10.11.dmg"
  name 'MySQL Utilities'
  homepage 'https://dev.mysql.com/downloads/utilities/'
  license :gpl

  depends_on macos: '<= :elcapitan'

  pkg "mysql-utilities-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.utilities'
end
