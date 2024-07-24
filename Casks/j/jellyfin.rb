cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.9.8"
  sha256 arm:   "c8b1388ffe50c583b7efd6dd1dc7da061a102b172456e4abc42a37ffd9059e42",
         intel: "38ceef1d7f2c9beaf7b4fe5e39397eb6fc1c2a2131f4c346b75f62ff9a6dab88"

  url "https://repo.jellyfin.org/files/server/macos/stable/v#{version}/#{arch}/jellyfin_#{version}-#{arch}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/?path=/server/macos/latest-stable/#{arch}"
    regex(/href=.*?jellyfin[._-]v?(\d+(?:[.-]\d+)+)-#{arch}\.dmg/i)
  end

  app "Jellyfin.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/jellyfin*.diag",
    "~/.cache/jellyfin/",
    "~/.config/jellyfin/",
    "~/.local/share/jellyfin/",
    "~/Library/Application Support/jellyfin",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
