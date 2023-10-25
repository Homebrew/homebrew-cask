cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.2.0"
  sha256 arm:   "f86d00c319a2fe19d4b1a2f37c7eb76bd5b2b0ff9307805efaa681c2585988ac",
         intel: "fa40d850e32093abf764c9619118e329b97e76628d406959523af7d65adb48e2"

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
