cask "jellyfin" do
  version "10.8.11"
  sha256 "8a293c7e7a3719b6fcadfd78b25f7a1e84d653231ab39ba80d5d04b17a5ddfda"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/jellyfin_#{version}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/releases/server/macos/stable/"
    regex(%r{href=.*?/Jellyfin_(\d+(?:\.\d+)*)\.dmg}i)
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
