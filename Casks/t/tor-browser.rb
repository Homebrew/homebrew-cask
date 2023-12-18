cask "tor-browser" do
  version "13.0.6"
  sha256 "c77af1f2cc1985980dcdac260bff34184d73cb08efff3f1f9fe6db84c5467de2"

  url "https://archive.torproject.org/tor-package-archive/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/download/"
    regex(%r{href=.*?/tor[._-]browser[._-]macos[._-]v?(\d+(?:.\d+)*)\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/tor-browser-alpha"
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
