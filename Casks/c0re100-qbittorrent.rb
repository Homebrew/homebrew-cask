cask "c0re100-qbittorrent" do
  version "4.2.5.16"
  sha256 "295f87ab8ee874bd8b2543ee33362d0a8e1ea9ca3a846671a25c419b389d4de4"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  appcast "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases.atom"
  name "qBittorrent Enhanced Edition"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

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
