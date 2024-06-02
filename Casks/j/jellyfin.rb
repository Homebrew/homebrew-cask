cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "10.9.4"
  sha256 arm:   "dab223fce8503bf02ce58d90db557244e8131b771744016271c50f667f308da7",
         intel: "46f52de6937a2ae3d3230155d5385ca9dc08a38981861de3390e025f883d32cf"

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
