cask "duckduckgo" do
  version "1.194.0,737"
  sha256 "54f45d1ba694b8c23c50d6b63ba080db53b852ffc557bd8ea35bf4eed5905b46"

  url "https://staticcdn.duckduckgo.com/macos-desktop-browser/duckduckgo-#{version.csv.first}.#{version.csv.second}.dmg"
  name "DuckDuckGo"
  desc "Web browser focusing on privacy"
  homepage "https://duckduckgo.com/"

  livecheck do
    url "https://staticcdn.duckduckgo.com/macos-desktop-browser/appcast2.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :monterey

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
