cask "tor-browser" do
  version "14.0.1"
  sha256 "e3e4935e5c50d0c099a3b082aea22dc5aaa61b9732995ef83ead6a67c9d5f8c9"

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
