cask "eudic" do
  version "4.1.1,1054"
  sha256 "89a98a6f74346cc9e90fe81f0485fe1b22e0259167dc4820131a0ab116c26ec3"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Eudic"
  name "欧路词典"
  homepage "https://www.eudic.net/v4/en/app/eudic"

  livecheck do
    url "https://www.eudic.net/update/eudic_mac.xml"
    strategy :sparkle
  end

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
