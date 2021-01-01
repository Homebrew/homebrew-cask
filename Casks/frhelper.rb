cask "frhelper" do
  version "4.0.2,1051"
  sha256 "befa3d89703b1a299741add6b3a8a6507d60736d679d925d6e9f07a2fe3cf158"

  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  appcast "https://www.eudic.net/update/frhelper_mac.xml",
          must_contain: version.after_comma
  name "Frhelper"
  name "法语助手"
  homepage "https://www.eudic.net/v4/fr/app/frhelper"

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
