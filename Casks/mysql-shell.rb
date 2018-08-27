cask 'mysql-shell' do
  version '8.0.12'
  sha256 '7e4f01f4f5c9f4567b2eafa6ffefe502096be89e4cdfb9952e6d379be8fffe7f'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.13-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.13-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
