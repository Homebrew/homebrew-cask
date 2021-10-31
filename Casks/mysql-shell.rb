cask "mysql-shell" do
  version "8.0.27"
  sha256 "3214e9d35b4950cd326b0bef3b9c582cf01957fbf64cebce4b7bb85b7e38add9"

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
