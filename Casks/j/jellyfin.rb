cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "12.2"
  sha256 arm:   "f6a4d13c1783667bc9c6c6de1bcec5d8c9537e5143ba44cda899cdf1cff83bc3",
         intel: "02b5ceba2345697a807d2fc334bc4fc9a8f01348711127074846f460634547a5"

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
