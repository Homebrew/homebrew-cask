cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "10.9.3"
  sha256 arm:   "25f634d71e84cc3f8210692c301f59f8e83ecdd3a126b7ebc5c08dcdaf5074d6",
         intel: "bf455fed09bf72511d804a77c33198e196a402f17011650a00c18a0d7903f982"

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
