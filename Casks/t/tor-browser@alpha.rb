cask "tor-browser@alpha" do
  version "14.5a2"
  sha256 "1be4a060d4758eb2a1ce5ed9713b45731179fbe7a692b225f7c0d86454964907"

  url "https://dist.torproject.org/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://aus1.torproject.org/torbrowser/update_3/alpha/downloads.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "tor-browser"
  depends_on macos: ">= :catalina"

  app "Tor Browser Alpha.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/SavedApplicationState/org.torproject.torbrowser.savedState",
  ]
end
