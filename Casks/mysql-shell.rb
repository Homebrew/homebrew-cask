cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.0.32"
  sha256 arm:   "d2a40b3ed8f3f6e7093135ab972adb9f6f9b3da245891c5d55c238f0b95f77c9",
         intel: "6d4163b3347ab3d675297fa810be60b1f1da68d22846712bad5091d2d6f85362"

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
