cask "eudic" do
  version "4.1.5,1065"
  sha256 "d593ff350a50faaa4bd5945f9bb0357b1689007b7e1546cdff3fddb71c11b76a"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.csv.second}",
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
