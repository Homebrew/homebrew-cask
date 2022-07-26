cask "mysql-shell" do
  version "8.0.30"
  sha256 "b45551417e5f9ed54887a4d736bf7adb62c0b225eaefd812e88197538d33cf57"

  url "https://cdn.mysql.com//Downloads/MySQL-Shell/mysql-shell-#{version}-macos12-x86-64bit.dmg"
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  livecheck do
    url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
    regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos12[._-]x86[._-]64bit\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "mysql-shell-#{version}-macos12-x86-64bit.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
