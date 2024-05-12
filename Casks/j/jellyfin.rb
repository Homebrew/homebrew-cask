cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "10.9.0"
  sha256 arm:   "340a12ba7c6f36b2c5b6786ea48461b4b97da58c81a6f43c14f87a89669c3d4a",
         intel: "5fb80d127e9e271008911592ce76c97a63851a1fc72aa64f3cc69d43f1cc7fe2"

  url "https://repo.jellyfin.org/files/server/macos/latest-stable/#{arch}/jellyfin_#{version}#{arch_suffix}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/?path=/server/macos/latest-stable/#{arch}"
    regex(/href=.*?jellyfin[._-]v?(\d+(?:[.-]\d+)+)#{arch_suffix}\.dmg/i)
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
