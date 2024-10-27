cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.10.0"
  sha256 arm:   "96d060276bdb1eb202218c2f603ab34e7177a33fc7b4753f8736fc996628c869",
         intel: "b3e21aa210c3204b13bd1ba9c5b4a5b8159679fbf7e525038713fea6e476b433"

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
