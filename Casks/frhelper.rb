cask "frhelper" do
  version "4.1.1,1054"
  sha256 "c07c614333c1adddca0d8126317792571ecb7128934b7784607ba3046f78e64d"

  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}",
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
    "~/Library/Eudb_fr",
    "~/Library/Caches/com.eusoft.frhelper",
    "~/Library/Caches/com.eusoft.frhelper.LightPeek",
    "~/Library/Preferences/com.eusoft.frhelper.plist",
    "~/Library/Application Support/com.eusoft.frhelper",
    "~/Library/Preferences/group.com.eusoft.frhelper.plist",
    "~/Library/Preferences/com.eusoft.frhelper.LightPeek.plist",
  ]
end
