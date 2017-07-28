cask 'mysql-shell' do
  version '1.0.10'
  sha256 'e9089ee384b4f9de1c2566043b232db2e4fdb8e9a722e24ef1b6dbf2e3e76344'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.12-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.12-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
