cask "clickshare" do
  version "4.30.2.2,48"
  sha256 "fd2bb5768586bfb291d430f61cd1649e7cbc66e6553247b0a832c2274d1680db"

  url "https://barcoprdwebsitefs.azureedge.net/barcoprdfs/Data/secure/downloads/tde/Active/SoftwareFiles/ApplicationSoftware/R3306192_48_ApplicationSw.zip?8w8nxzTmccHn9SKQbzf9SK7WhUGrK1A9E3Jt7T2ubIR2_DSur3_ftp4A--RjRorNohOX7YWfLhKRdMHGh5WYdn68BXVI",
      verified: "barcoprdwebsitefs.azureedge.net/"
  name "ClickShare"
  desc "Wireless teleconferencing client"
  homepage "https://www.barco.com/en/clickshare/app"

  livecheck do
    skip "dunno?"
  end

  container nested:	"R3306192_#{version.csv.second}_ApplicationSw/ClickShare_Setup.dmg"

  app "ClickShare.app"

  uninstall quit: "com.barco.clickshare"

  zap trash: [
    "~/.clickshare",
    "~/Library/Caches/com.barco.clickshare.updater*",
    "~/Library/HTTPStorages/com.barco.clickshare.updater",
    "~/Library/LaunchAgents/com.barco.clickshare.agent.plist",
    "~/Library/Preferences/com.barco.ClickShare Client.plist",
    "~/Library/Preferences/com.barco.clickshare*.plist",
  ]
end
