cask "mysqlworkbench" do
  arch arm: "arm64", intel: "x86_64"

  on_high_sierra :or_older do
    version "8.0.18"
    sha256 "965f85163d1723be26c1f0c74c5b1cd908fac79e02c00fa371c217c9a3bf09ae"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "8.0.21"
    sha256 "7d812551cc1cc38e1d5f588e6c91b07f1778c78a04bfe94dafac3a23ea425e88"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "8.0.23"
    sha256 "4c8664f5686a449a9760bda9b85d7e8c6beb1367d35f668048ffe534652da7b3"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "8.0.31"
    sha256 "6807ac1138c424c57d7e912c08301a838a90935dd0fc7a5658d3ded23f98a865"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "8.0.34"
    sha256 arm:   "aea67c39354d76c38f2e9aca4390dbe4f75ecc3f12110ff598bf2fc46f48bf8c",
           intel: "9fba65a06db4c67e353014b49c41d7cd0e915dd6584df43d6cb099f38cf841e2"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-#{arch}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "8.0.38"
    sha256 arm:   "50dc8cf607c4825f7c0d8e4cc0c945ba3d9c3b0d56fe33ce70ebf4f434b8a7b3",
           intel: "7a83eb4b6d9ea8f312a6f5ff541ccc43e17432e80aa2bd69cb866a1febede34d"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-#{arch}.dmg"

    livecheck do
      url "https://dev.mysql.com/downloads/workbench/"
      regex(/MySQL\s*Workbench\s*(\d+(?:\.\d+)+)/i)
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
