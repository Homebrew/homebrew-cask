cask "c0re100-qbittorrent" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.3.10"

  on_macos do
    sha256 "bff0dce3571ffd8ead2c55adcb44baec40a696f8fec7e422ff7908b98bd624ea"

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
    sha256 arm64_linux:  "3f917741152be233220c874e07ffd37af910c091275cfc9c9ffebb0286afa460",
           x86_64_linux: "c7bb487afd06daf4628c1f652f8e627ac5afbae755b8b1feea23e4583f07ca65"

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
