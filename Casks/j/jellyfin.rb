cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "10.9.2"
  sha256 arm:   "8558be3b68c3d697bb586f7bf7a0da7d56ae5606fd3129bb175872a5880d66aa",
         intel: "e2321576acc0bc12cb368dccf8c6b41f895d70ae40ccf926f19f42fe8a2b3da2"

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
