cask "clickshare" do
  version "4.26.0.12"
  sha256 "4520ee1c505db88d7480004986c190c37a33b1e5e90d473959a9748373e88317"

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
