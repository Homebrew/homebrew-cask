cask "mysqlworkbench" do
  if MacOS.version <= :sierra
    version "6.3.10"
    sha256 "29857bf84bebb7c4442ce147e44602d00f8c001e3c09b3a6e3af356767e08d2c"
    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  elsif MacOS.version <= :high_sierra
    version "8.0.16"
    sha256 "3478800290e2797d294e3721fdaea4c41ddc1917f2b59ec94a935e16c18dc5d2"
    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  elsif MacOS.version <= :mojave
    version "8.0.21"
    sha256 "7d812551cc1cc38e1d5f588e6c91b07f1778c78a04bfe94dafac3a23ea425e88"
    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"
  elsif MacOS.version <= :catalina
    version "8.0.22"
    sha256 "4e27de82d869043cf80e803f1a57cc041a91cabddf0aa6a6c054d68af1837d48"
    url "https://downloads.mysql.com/archives/get/p/#{version.major}/file/mysql-workbench-community-#{version}-macos-x86_64.dmg"

    livecheck do
      skip "newer versions only available for Big Sur or higher"
    end
  else
    version "8.0.28"
    sha256 "bd50e64caee2ac6c0f0520fc34e107f3f77c8bcc6de6d85b7c948a696b247157"
    url "https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-#{version}-macos-x86_64.dmg"

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
