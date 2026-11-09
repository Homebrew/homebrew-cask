cask "c0re100-qbittorrent" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.4.10"
  sha256 arm:          "992313bf75509dbc1435a90bedf659921b54b1999e86f0247651c746112f7098",
         intel:        "992313bf75509dbc1435a90bedf659921b54b1999e86f0247651c746112f7098",
         arm64_linux:  "27d6edcf160a298b1f7e2c22fe51340940266ee145013843b6322d20e1cdfc6d",
         x86_64_linux: "648502c598e974f538a79c878e7bff506d968b4acbb33f751d23b9d51074a20d"

  on_macos do
    url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-Enhanced-Edition-release-#{version}-macOS-universal.dmg"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :ventura

    app "qBittorrent.app"

    zap trash: [
      "~/.config/qBittorrent",
      "~/Library/Application Support/qBittorrent",
      "~/Library/Caches/qBittorrent",
      "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
      "~/Library/Preferences/qBittorrent",
      "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
    ]
  end
  on_linux do
    url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-Enhanced-Edition-#{arch}.AppImage"

    app_image "qBittorrent-Enhanced-Edition-#{arch}.AppImage", target: "qBittorrent.AppImage"
  end

  name "qBittorrent Enhanced Edition"
  desc "Bittorrent client"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: [
    "qbittorrent",
    "qbittorrent@lt20",
  ]
end
