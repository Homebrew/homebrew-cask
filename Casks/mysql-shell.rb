cask "mysql-shell" do
  version "8.0.22"
  sha256 "77152a69cbd2cf974b9c92254f4500598cad9da71f13cab5a2139c0026a8f5e6"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.15-x86-64bit.dmg"
  name "MySQL Shell"
  homepage "https://dev.mysql.com/downloads/shell/"

  pkg "mysql-shell-#{version}-macos10.15-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
