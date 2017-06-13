cask 'mysql-shell' do
  version '1.0.9'
  sha256 'c47ebefa2bb8f0a949843e5eb198857d4e96a4e296c4bde5f1afec03c295844a'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.12-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.12-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap delete: '~/.mysqlsh'
end
