cask "mysqlworkbench" do
  arch arm: "arm64", intel: "x86_64"

  on_sierra :or_older do
    version "6.3.10"
    sha256 "29857bf84bebb7c4442ce147e44602d00f8c001e3c09b3a6e3af356767e08d2c"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  end
  on_high_sierra do
    version "8.0.16"
    sha256 "3478800290e2797d294e3721fdaea4c41ddc1917f2b59ec94a935e16c18dc5d2"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  end
  on_mojave do
    version "8.0.21"
    sha256 "7d812551cc1cc38e1d5f588e6c91b07f1778c78a04bfe94dafac3a23ea425e88"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  end
  on_catalina do
    version "8.0.22"
    sha256 "4e27de82d869043cf80e803f1a57cc041a91cabddf0aa6a6c054d68af1837d48"

    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "newer versions only available for Ventura or higher"
    end
  end
  on_big_sur do
    version "8.0.32"
    sha256 "746549812eae490c94501de2c4b784c178cd936049e5853bb264fea8b802b081"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "newer versions only available for Ventura or higher"
    end
  end
  on_monterey do
    version "8.0.32"
    sha256 "746549812eae490c94501de2c4b784c178cd936049e5853bb264fea8b802b081"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "newer versions only available for Ventura or higher"
    end
  end
  on_ventura :or_newer do
    version "8.0.34"
    sha256 arm:   "aea67c39354d76c38f2e9aca4390dbe4f75ecc3f12110ff598bf2fc46f48bf8c",
           intel: "9fba65a06db4c67e353014b49c41d7cd0e915dd6584df43d6cb099f38cf841e2"

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
