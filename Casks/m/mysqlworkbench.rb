cask "mysqlworkbench" do
  arch arm: "arm64", intel: "x86_64"

  on_monterey :or_older do
    on_catalina :or_older do
      version "8.0.23"
      sha256 "4c8664f5686a449a9760bda9b85d7e8c6beb1367d35f668048ffe534652da7b3"

      url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
    end
    on_big_sur do
      version "8.0.31"
      sha256 "6807ac1138c424c57d7e912c08301a838a90935dd0fc7a5658d3ded23f98a865"

      url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
    end
    on_monterey do
      version "8.0.34"
      sha256 arm:   "aea67c39354d76c38f2e9aca4390dbe4f75ecc3f12110ff598bf2fc46f48bf8c",
             intel: "9fba65a06db4c67e353014b49c41d7cd0e915dd6584df43d6cb099f38cf841e2"

      url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-#{arch}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "8.0.44"
    sha256 arm:   "973b9eb96399b05efa2a6bc7d57c2679b6a18df5199faa73b0eede42ae21adce",
           intel: "34b49d6f72a26e89770c2efaf3f29af403ca92f4f313f1ace2aad21a12129e55"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-#{arch}.dmg"

    livecheck do
      url "https://dev.mysql.com/downloads/workbench/?tpl=platform&os=33"
      regex(/mysql[._-]workbench[._-]community[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    end
  end

  name "MySQL Workbench"
  desc "Visual tool to design, develop and administer MySQL servers"
  homepage "https://www.mysql.com/products/workbench/"

  app "MySQLWorkbench.app"

  zap trash: [
    "~/Library/Application Support/MySQL/Workbench",
    "~/Library/Caches/com.oracle.workbench.MySQLWorkbench",
    "~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist",
    "~/Library/Saved Application State/com.oracle.workbench.MySQLWorkbench.savedState",
  ]
end
