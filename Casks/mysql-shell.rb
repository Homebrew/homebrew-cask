cask 'mysql-shell' do
  version '8.0.11'
  sha256 '0ea8e0d3e6b4771c19b597ccfcab3e6eaa1c53b5c8addd5733d284fc62627ff0'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.13-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.13-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
