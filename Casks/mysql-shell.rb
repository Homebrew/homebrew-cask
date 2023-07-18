cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.1.0"
  sha256 arm:   "2267b0cdeaf4e9280f4ca886d1406292e2a12c54b9576f69fbcce1c769570e03",
         intel: "a67120c620172a869e07906dc095f67f8b6d2f159707cf13f888d38162e62cc0"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos13-#{arch}.dmg"
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  livecheck do
    url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
    regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos13[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  pkg "mysql-shell-#{version}-macos13-#{arch}.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
