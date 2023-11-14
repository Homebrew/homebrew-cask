cask "duckduckgo" do
  version "1.64.0"
  sha256 "73f3321b5c1a26d6136f079c05c5ffec012009a105de1215303aaa27a9c8912f"

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
