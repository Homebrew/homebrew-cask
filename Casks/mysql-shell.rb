cask 'mysql-shell' do
  version '1.0.11'
  sha256 'f5805eeef78dc8a6d6ac8642d944fc82ccf2ceda2c1654687d4fa65e07a94005'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.13-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.13-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
