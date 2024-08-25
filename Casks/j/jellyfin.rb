cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.9.10"
  sha256 arm:   "c0131d3f204cfc15118b94be0c3a4ea3fed8e641f4ffe9142ba795c8d69122e8",
         intel: "23c122e2ef01012b76da3726bbb5c991683b8693de22e591e396b07b2745e65e"

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
