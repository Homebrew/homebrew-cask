cask "batorrent" do
  version "2.5.1"
  sha256 "639798814ad7236f0e989458bb0811033e7999aae581be85ef746faeea7fc36b"

  url "https://github.com/Mateuscruz19/BAT-Torrent/releases/download/v#{version}/BATorrent-macos-arm64.dmg"
  name "BATorrent"
  desc "Open-source BitTorrent client with VPN kill switch, anti-Xunlei, Tor, and 7 languages"
  homepage "https://github.com/Mateuscruz19/BAT-Torrent"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "BATorrent.app"

  zap trash: [
    "~/Library/Application Support/BATorrent",
    "~/Library/Preferences/com.batorrent.app.plist",
  ]
end
