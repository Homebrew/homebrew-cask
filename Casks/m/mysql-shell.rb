cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.3.0"
  sha256 arm:   "9b772d1908c1413cafe1cd76eec4ae81014ab70ae820c87977396d584371b392",
         intel: "a2121ba87bce1b65eb7f756107ea90b8d99e4c63d629987a8d4436ca28065fa7"

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos14-#{arch}.dmg"
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  livecheck do
    url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
    regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos14[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  pkg "mysql-shell-#{version}-macos14-#{arch}.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
