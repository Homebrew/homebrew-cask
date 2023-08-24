cask "duckduckgo" do
  version "1.53.1"
  sha256 "b018e7852c21694cef526a2a301a865d549fcf6abdd0eb8b3505892aab1fd877"

  url "https://staticcdn.duckduckgo.com/macos-desktop-browser/duckduckgo-#{version}.dmg"
  name "DuckDuckGo"
  desc "Web browser focusing on privacy"
  homepage "https://duckduckgo.com/"

  livecheck do
    url "https://staticcdn.duckduckgo.com/macos-desktop-browser/appcast2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
