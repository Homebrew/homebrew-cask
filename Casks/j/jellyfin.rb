cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "12.3"
  sha256 arm:   "4a80f02524fd4884605b6e1ff43414092c39f41be40d3ddb90415af461fba60d",
         intel: "a20b6bbbc0751a86224529ad991185dbf02ecafd34678adbdaa9d999c0f19d28"

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
