cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.9.9"
  sha256 arm:   "6ea88e4c86be2fe133882562c208b3b2df04adca82c18d9d42a4b160db2f4d97",
         intel: "f3212c72f5ff9d89a4378ac64654aa1a15b19de240ed9fce0b7dd4d3a0c7ede2"

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
