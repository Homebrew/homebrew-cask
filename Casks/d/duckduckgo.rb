cask "duckduckgo" do
  version "1.58.1"
  sha256 "5cdd9e2937217b7f3581217599d2c6b5a4d02ed0bc8fd9117a925c233b8c7d2f"

  url "https://staticcdn.duckduckgo.com/macos-desktop-browser/duckduckgo-#{version}.dmg"
  name "DuckDuckGo"
  desc "Web browser focusing on privacy"
  homepage "https://duckduckgo.com/"

  livecheck do
    url "https://staticcdn.duckduckgo.com/macos-desktop-browser/appcast2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DuckDuckGo.app"

  zap trash: [
    "~/Library/Caches/com.duckduckgo.macos.browser",
    "~/Library/Containers/com.duckduckgo.macos.browser",
    "~/Library/HTTPStorages/com.duckduckgo.macos.browser",
    "~/Library/Preferences/com.duckduckgo.macos.browser.plist",
    "~/Library/Saved Application State/com.duckduckgo.macos.browser.savedState",
    "~/Library/WebKit/com.duckduckgo.macos.browser",
  ]
end
