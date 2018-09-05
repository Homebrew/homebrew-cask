cask 'mysql-utilities' do
  version '1.6.5'
  sha256 '114658256e846b4eeff141065e18ef3f779bcbe59e5d2828ab920d905e693db7'

  url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-#{version}-macos10.12.dmg"
  name 'MySQL Utilities'
  homepage 'https://dev.mysql.com/downloads/utilities/'

  depends_on macos: '>= :sierra'

  pkg "mysql-utilities-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.utilities'
end
