cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "12.4"
  sha256 arm:   "504c0e201e4d9374403300622317b9a6b8b86f860a2a52eea5734f9abf70769d",
         intel: "333d73eb745b5545168e05d8c79141b53c0693fd5df33add1d1afaf0d8c2a8b8"

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
