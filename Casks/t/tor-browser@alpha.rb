cask "tor-browser@alpha" do
  version "16.0a1"
  sha256 "5875057dad8cfae453255b5e6c39ab6d142e377fb8f952e802f48322b51dc222"

  url "https://dist.torproject.org/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://aus1.torproject.org/torbrowser/update_3/alpha/download-macos.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "tor-browser"

  app "Tor Browser Alpha.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/SavedApplicationState/org.torproject.torbrowser.savedState",
  ]
end
