cask "mysql-shell" do
  version "8.0.25"
  sha256 "f6f29cbdf27e0ab245f83c6e3ab61536d70a0e9ad1b89ecdcedb37671527c0b1"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos11-x86-64bit.dmg"
  name "MySQL Shell"
  homepage "https://dev.mysql.com/downloads/shell/"

  pkg "mysql-shell-#{version}-macos11-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
