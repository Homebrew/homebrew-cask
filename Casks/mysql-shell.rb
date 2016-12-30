cask 'mysql-shell' do
  version '1.0.5'
  sha256 'aa70cfd1b0d9663e1a942b0d4f6047e097a0e1ee7d6906b44c27fcecee10d24b'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-osx10.11-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'http://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-osx10.11-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap delete: '~/.mysqlsh'
end
