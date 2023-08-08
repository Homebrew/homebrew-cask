cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.1.1"
  sha256 arm:   "ab53c775b44ddc06b245374790d9c002232b6401ad89553facd966d19ce7ad47",
         intel: "fcf24b887ca2078557086c8a1ce806decc682ad1b74eb794c3a7268cf2048168"

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
