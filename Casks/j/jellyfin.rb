cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "12.1"
  sha256 arm:   "0665f45616463ed22c6c2ea71c9be3827454308848a574073ef60f025d0939da",
         intel: "2bc4e03e4bd805a9f561bea122677101a4c1ab347769f5bac6c35a24a3551a4e"

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
