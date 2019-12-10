cask 'mysql-shell' do
  version '8.0.18'
  sha256 '23676e36670ae4753583344e012066782d09c7df3ed11d2611d604c85d91693d'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.14-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.14-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
