cask "eudic" do
  version "4.1.3,1062"
  sha256 "d2fe8f18be4fedd5c872e23907c691f5add979cef29c088729fdead8af56d85a"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Eudic"
  name "欧路词典"
  desc "European dictionary"
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
    "~/Library/Containers/com.eusoft.eudic.QuickLook",
    "~/Library/Eudb_en",
    "~/Library/Preferences/com.eusoft.eudic.plist",
    "~/Library/Preferences/com.eusoft.eudic.LightPeek.plist",
    "~/Library/Preferences/group.com.eusoft.eudic.plist",
  ]
end
