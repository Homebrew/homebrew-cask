cask "eudic" do
  version "4.0.1,2020-11-14"
  sha256 "7b381dca81eac835fb8972e15eb4895ba8aaccdb48aaa2b920f77c51b4532174"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/en/app/download",
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
  ]
end
