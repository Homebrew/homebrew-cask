cask "tor-browser" do
  version "14.0.3"
  sha256 "95c558ecd677818f1a86a5c02c50de3196257d5bd888ce9d6bf4d3ef357eca9d"

  url "https://archive.torproject.org/tor-package-archive/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/download/"
    regex(%r{href=.*?/tor[._-]browser[._-]macos[._-]v?(\d+(?:.\d+)*)\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "tor-browser@alpha"
  depends_on macos: ">= :sierra"

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
