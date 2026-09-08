cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "12.0"
  sha256 arm:   "5c6611e8b20c5a0ff9738c8ac18e7d0f02e77f02092a0e715e634ad8b2be4010",
         intel: "c4a00804d7df5b79eca9a4e911204257071be9d8b506e8d383f4a38ee3dfd34b"

  url "https://repo.jellyfin.org/files/server/macos/stable/v#{version}/#{arch}/jellyfin_#{version}-#{arch}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/?path=/server/macos/latest-stable/#{arch}"
    regex(/href=.*?jellyfin[._-]v?(\d+(?:[.-]\d+)+)-#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "Jellyfin.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/jellyfin*.diag",
    "~/.cache/jellyfin",
    "~/.config/jellyfin",
    "~/.local/share/jellyfin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jellyfin.server.sfl*",
    "~/Library/Application Support/jellyfin",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
