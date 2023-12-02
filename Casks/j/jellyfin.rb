cask "jellyfin" do
  version "10.8.13-1"
  sha256 "db714f227ccc11fe16cfb4b4fa98ba410c44ae2d6c47894a2860fa5bffd508e5"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/jellyfin_#{version}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/releases/server/macos/stable/"
    regex(/href=.*?jellyfin[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "Jellyfin.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/jellyfin*.diag",
    "~/.cache/jellyfin/",
    "~/.config/jellyfin/",
    "~/.local/share/jellyfin/",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
