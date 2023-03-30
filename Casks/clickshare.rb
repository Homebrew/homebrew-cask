cask "clickshare" do
  version "4.28.0.11,45"
  sha256 "9b14dddad05c87a85c7d5fa9f004dc029fcec49abd14f8b8196d675f7ebf2f9e"

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R3306192&TdeType=3&MajorVersion=#{format("%02d", version.csv.first.major)}&MinorVersion=#{format("%02d", version.csv.first.minor)}&PatchVersion=#{format("%02d", version.csv.first.patch)}&BuildVersion=#{format("%03d", version.csv.first.split(".").last)}"
  name "ClickShare"
  desc "Wireless teleconferencing client"
  homepage "https://www.barco.com/en/clickshare/app"

  livecheck do
    url "https://www.barco.com/en/support/software/R3306192"
    regex(/<div[^>]*>\s*v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      versions = page.scan(regex).flatten.uniq
      "#{versions.first},#{versions.count + 4}"
    end
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
