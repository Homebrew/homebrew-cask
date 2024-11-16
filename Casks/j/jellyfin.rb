cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.10.2"
  sha256 arm:   "7332a546ccf1829dbe47805fdb6599d4ee7886a64950d7bc2d6f387eb5b34a07",
         intel: "b2ac2657a17bbdf2232c06beae622e69dd8b40c523a57da21c07582fa2d85c4c"

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
