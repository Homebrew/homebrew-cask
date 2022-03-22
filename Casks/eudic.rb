cask "eudic" do
  version "4.1.8,1068"
  sha256 "75c5cede495d0b98cc755915304bbd771e40c92bf46a190a74401929967a3837"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Eudic"
  name "欧路词典"
  desc "European dictionary"
  homepage "https://www.eudic.net/v4/en/app/eudic"

  app "Eudic.app"

  uninstall quit: [
    "com.eusoft.eudic",
    "com.eusoft.eudic.LightPeek",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.eusoft.eudic.QuickLook",
    "~/Library/Application Support/com.eusoft.eudic",
    "~/Library/Caches/com.eusoft.eudic",
    "~/Library/Caches/com.eusoft.eudic.LightPeek",
    "~/Library/Containers/com.eusoft.eudic.QuickLook",
    "~/Library/Eudb_en",
    "~/Library/Preferences/com.eusoft.eudic.plist",
    "~/Library/Preferences/com.eusoft.eudic.LightPeek.plist",
    "~/Library/Preferences/group.com.eusoft.eudic.plist",
  ]
end
