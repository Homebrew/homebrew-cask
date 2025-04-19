cask "c0re100-qbittorrent" do
  version "5.0.5.10"
  sha256 "026a979433aa9e97dc4daf9162092574490b05f7b66b4223059c22a95a6e1679"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-Enhanced-Edition-release-#{version}-macOS-universal.dmg"
  name "qBittorrent Enhanced Edition"
  desc "Bittorrent client"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "qbittorrent"
  depends_on macos: ">= :monterey"

  app "qbittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
