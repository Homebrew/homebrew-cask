cask "frhelper" do
  version "4.2.9,1081"
  sha256 "5eae043981f58139f734caa86404bb524cc57ff621b35d5ab15375d7ee6a06dc"

  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Frhelper"
  name "法语助手"
  desc "French-Chinese dictionary and learning tool"
  homepage "https://www.eudic.net/v4/fr/app/frhelper"

  livecheck do
    url "https://www.eudic.net/update/frhelper_mac.xml"
    strategy :sparkle
  end

  app "Frhelper.app"

  uninstall quit: [
    "com.eusoft.frhelper",
    "com.eusoft.frhelper.LightPeek",
    "com.eusoft.frhelper.QuickLook",
  ]

  zap trash: [
    "~/Library/Application Support/com.eusoft.frhelper",
    "~/Library/Caches/com.eusoft.frhelper",
    "~/Library/Caches/com.eusoft.frhelper.LightPeek",
    "~/Library/Containers/com.eusoft.frhelper.QuickLook",
    "~/Library/Eudb_fr",
    "~/Library/Preferences/com.eusoft.frhelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.frhelper.plist",
    "~/Library/Preferences/group.com.eusoft.frhelper.plist",
  ]
end
