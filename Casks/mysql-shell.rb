cask "mysql-shell" do
  version "8.0.29"
  sha256 "971e88d93f477437b7b6507408c0c31183f36af7922b7c2f6570ec314779ad20"

  url "https://cdn.mysql.com//Downloads/MySQL-Shell/mysql-shell-#{version}-macos12-x86-64bit.dmg"
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  livecheck do
    url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
    regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos12[._-]x86[._-]64bit\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "mysql-shell-#{version}-macos11-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
