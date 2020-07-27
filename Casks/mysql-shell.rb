cask "mysql-shell" do
  version "8.0.21"
  sha256 "bdabf0a30a34c5c3d7692d44c175d65f041797f5ab1f70090e7ab3796e3bb6c4"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.15-x86-64bit.dmg"
  name "MySQL Shell"
  homepage "https://dev.mysql.com/downloads/shell/"

  pkg "mysql-shell-#{version}-macos10.15-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
