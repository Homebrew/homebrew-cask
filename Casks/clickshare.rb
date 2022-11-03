cask "clickshare" do
  version "4.25.0.15"
  sha256 "bf93b500f4df2357e65b15e81d0867b98a8c19551b1f126e951150236dc76287"

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R3306192&TdeType=3&MajorVersion=#{format("%02d", version.major)}&MinorVersion=#{format("%02d", version.minor)}&PatchVersion=#{format("%02d", version.patch)}&BuildVersion=#{format("%03d", version.split(".").last)}"
  name "ClickShare"
  desc "Wireless teleconferencing client"
  homepage "https://www.barco.com/en/clickshare/app"

  livecheck do
    url "https://www.barco.com/en/support/software/R3306192"
    regex(/td>v?(\d+(?:\.\d+)+)</i)
  end

  container nested:	"ClickShare_Setup.dmg"

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
