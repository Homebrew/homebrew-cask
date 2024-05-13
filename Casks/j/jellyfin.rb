cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"
  arch_suffix = on_arch_conditional arm: "_arm64"

  version "10.9.1"
  sha256 arm:   "c4f03418e1bb1bebf3ccc0ea18746686d07bdf19e1ca118c649f5bc63448e4f0",
         intel: "a4baf6b8b1e2c4fd2320e5936fed192b17fcc17ba156ff0dba1df74da9c80d5d"

  url "https://repo.jellyfin.org/files/server/macos/stable/v#{version}/#{arch}/jellyfin_#{version}#{arch_suffix}.dmg"
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
    "~/Library/Application Support/jellyfin",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
