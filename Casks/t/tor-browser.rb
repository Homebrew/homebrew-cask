cask "tor-browser" do
  version "15.0.25"
  sha256 "4771ad39f84323e60c1966b270a743c9a23f437569aca36dbb93988919c1a7ae"

  url "https://www.torproject.org/dist/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  # Upstream may publish a new version for platforms other than macOS. The JSON
  # download information only provides information for the highest version,
  # which is a problem if the newest version for macOS is lower. This checks
  # the download page instead, which links to the newest file for macOS.
  livecheck do
    url "https://download.torproject.org/tor-browser-for-desktop/"
    regex(/href=.*?tor-browser(?:-macos)?[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "tor-browser@alpha"
  depends_on :macos

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
