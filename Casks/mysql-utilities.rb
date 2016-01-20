cask 'mysql-utilities' do
  version '1.5.6'
  sha256 '2553ae12323abe28ab3161ebdb6aff991fbb738dc6ef03946c0fae86aadac230'

  url "http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-#{version}-osx10.9.dmg"
  name 'MySQL Utilities'
  homepage 'https://dev.mysql.com/downloads/utilities/'
  license :gpl

  depends_on macos: '<= :yosemite'

  pkg "mysql-utilities-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.utilities'
end
