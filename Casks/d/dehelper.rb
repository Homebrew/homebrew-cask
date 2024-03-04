cask "dehelper" do
  version "4.6.0"
  sha256 :no_check

  url "https://static.eudic.net/pkg/dhmac.dmg",
      user_agent: :fake
  name "Dehelper"
  name "德语助手"
  desc "Chinese-German dictionary"
  homepage "https://www.eudic.net/v#{version.major}/de/app/dehelper"

  livecheck do
    url "https://static.eudic.net/pkg/dehelper_mac.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "dehelper.app"

  uninstall quit: [
    "com.eusoft.dehelper",
    "com.eusoft.dehelper.LightPeek",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.eusoft.dehelper.QuickLook",
    "~/Library/Caches/com.eusoft.dehelper",
    "~/Library/Caches/com.eusoft.dehelper.LightPeek",
    "~/Library/Containers/com.eusoft.dehelper.QuickLook",
    "~/Library/Eudb_de",
    "~/Library/HTTPStorages/com.eusoft.dehelper",
    "~/Library/HTTPStorages/com.eusoft.dehelper.binarycookies",
    "~/Library/Preferences/com.eusoft.dehelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.dehelper.plist",
    "~/Library/Preferences/group.com.eusoft.dehelper.plist",
    "~/Library/WebKit/com.eusoft.dehelper",
  ]
end
