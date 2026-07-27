cask "duckduckgo" do
  version "1.200.0,771"
  sha256 "d221fcd9fa1b012d62fdddf4fea50953f8d8d1f256e43fa768f4d6559ce7a050"

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
    "~/Library/Application Scripts/HKE973VLUW.com.duckduckgo.macos.browser*",
    "~/Library/Application Support/com.duckduckgo.macos.browser",
    "~/Library/Application Support/DuckDuckGo",
    "~/Library/Caches/com.duckduckgo.macos.browser",
    "~/Library/Containers/com.duckduckgo.macos.browser",
    "~/Library/Group Containers/HKE973VLUW.com.duckduckgo.macos.browser*",
    "~/Library/HTTPStorages/com.duckduckgo.macos.browser",
    "~/Library/Preferences/com.duckduckgo.macos.browser.plist",
    "~/Library/Saved Application State/com.duckduckgo.macos.browser.savedState",
    "~/Library/WebKit/com.duckduckgo.macos.browser",
  ]
end
