cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.2.1"
  sha256 arm:   "099bb8194994f775190f9ef30a9c41192205c2ca04ea3566bb01e130edd96565",
         intel: "117fcb004136227e2d6f74acc4a6bd42e1128fed6f8f4cc4180c278819435f4a"

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
