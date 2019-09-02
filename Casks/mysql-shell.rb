cask 'mysql-shell' do
  version '8.0.17'
  sha256 '1a527b42a1e60f263e8c8653754e7d3ea6833be3fac96377645a552a3c47d49d'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.14-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.14-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
