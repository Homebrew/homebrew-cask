cask "c0re100-qbittorrent" do
  version "4.3.4.11"
  sha256 "6679da7f0fe37eb1f51b7dfdfa7c2d25533259dd4280281aa3a85c8f9bb6fc3d"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  name "qBittorrent Enhanced Edition"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    strategy :git
    regex(/^release-(\d+(?:\.\d+)*)$/i)
  end

  depends_on macos: ">= :sierra"

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
