cask "mysql-shell" do
  version "8.0.28"
  sha256 "1d72b5b8aa453a6d6b8484a1230f77789a051dbe16730bcfc3592e39d470934b"

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
