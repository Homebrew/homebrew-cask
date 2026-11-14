cask "mysqlworkbench" do
  arch arm: "arm64", intel: "x86_64"

  on_big_sur :or_older do
    version "8.0.31"
    sha256 "6807ac1138c424c57d7e912c08301a838a90935dd0fc7a5658d3ded23f98a865"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg",
        user_agent: :curl

    livecheck do
      skip "Legacy version"
    end

    app "MySQLWorkbench.app"

    caveats do
      requires_rosetta
    end
  end
  on_monterey :or_newer do
    on_arm do
      version "26.10.0"
      sha256 "b0ea97a20a0ff368247ddd3b90dbb2f4ad866a43e0e722d4b1a13f43bbba51ed"

      url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-#{version}-macos-#{arch}.dmg"

      livecheck do
        url "https://dev.mysql.com/downloads/workbench/?tpl=platform&os=33",
            user_agent: :curl
        regex(/mysql[._-]workbench[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
      end

      app "MySQL Workbench.app"

      uninstall quit: "com.oracle.mysqlworkbench"
    end
    on_intel do
      on_monterey do
        version "8.0.34"
        sha256 "9fba65a06db4c67e353014b49c41d7cd0e915dd6584df43d6cb099f38cf841e2"
      end
      on_ventura :or_newer do
        version "8.0.47"
        sha256 "9fb82446b8c89a5326f9c4b2ab59ab6ac76b389713f1f13553743f34952639a8"
      end

      url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-#{arch}.dmg",
          user_agent: :curl

      livecheck do
        skip "Legacy version"
      end

      app "MySQLWorkbench.app"
    end
  end

  name "MySQL Workbench"
  desc "Visual tool to design, develop and administer MySQL servers"
  homepage "https://www.mysql.com/products/workbench/"

  depends_on :macos

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.oracle.mysqlworkbench.sfl*",
    "~/Library/Application Support/MySQL Workbench",
    "~/Library/Application Support/MySQL/Workbench",
    "~/Library/Caches/com.oracle.workbench.MySQLWorkbench",
    "~/Library/Preferences/com.oracle.mysqlworkbench.plist",
    "~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist",
    "~/Library/Saved Application State/com.oracle.workbench.MySQLWorkbench.savedState",
  ]
end
