cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.0.33"
  sha256 arm:   "aa2613d86c793769b0e2cb372fb94837b9576e472e4628920c7a6b0076b9ada7",
         intel: "0ea222d0819c94d2a7e20363f6488a7207cda7feba80835b54228850f6d09a29"

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
