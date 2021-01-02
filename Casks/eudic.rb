cask "eudic" do
  version "4.0.2,1051"
  sha256 "ca8a9de73f9d856ed7bf67e9576a597dc29710b28d195358d4164467f221ca15"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  appcast "https://www.eudic.net/update/eudic_mac.xml",
          must_contain: version.after_comma
  name "Eudic"
  name "欧路词典"
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
    "~/Library/Eudb_en",
    "~/Library/Preferences/com.eusoft.eudic.plist",
    "~/Library/Preferences/com.eusoft.eudic.LightPeek.plist",
    "~/Library/Preferences/group.com.eusoft.eudic.plist",
  ]
end
