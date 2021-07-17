cask "mysql-shell" do
  version "8.0.25"
  sha256 "f6f29cbdf27e0ab245f83c6e3ab61536d70a0e9ad1b89ecdcedb37671527c0b1"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos11-x86-64bit.dmg"
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  livecheck do
    url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
    regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos11[._-]x86[._-]64bit\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "mysql-shell-#{version}-macos11-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
