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
    version "8.0.32"
    sha256 "746549812eae490c94501de2c4b784c178cd936049e5853bb264fea8b802b081"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "8.0.32"
    sha256 "746549812eae490c94501de2c4b784c178cd936049e5853bb264fea8b802b081"

    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "8.0.36"
    sha256 arm:   "78131b39e482d314eb8bc3a8e0a17339584f905aeddabaa1d838c435dbfedc60",
           intel: "1a4d23cdf073c37017ee8a80b083463595b84d031f9f2686d3b42652f51d72ef"

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
