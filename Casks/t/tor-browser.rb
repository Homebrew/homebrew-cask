cask "tor-browser" do
  version "14.5.2"
  sha256 "b6f9c5eb778e0f4fd11d125a6b1567b8dedd75ab2527e84a28397dc2539362ee"

  url "https://archive.torproject.org/tor-package-archive/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  # Upstream may publish a new version for platforms other than macOS. The JSON
  # download information only provides information for the highest version,
  # which is a problem if the newest version for macOS is lower. This checks
  # the download page instead, which links to the newest file for macOS.
  livecheck do
    url "https://www.torproject.org/download/"
    regex(/href=.*?tor-browser(?:-macos)?[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "tor-browser@alpha"
  depends_on macos: ">= :catalina"

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
