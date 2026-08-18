cask "plex-media-server" do
  version "1.43.3.10896,cb3ebc72d"
  sha256 "185963b4043898a734db7b3d2b2845bc389492681544989550744edccb1a0e7b"

  url "https://downloads.plex.tv/plex-media-server-new/#{version.csv.first}-#{version.csv.second}/macos/PlexMediaServer-#{version.csv.first}-#{version.csv.second}-universal.zip"
  name "Plex Media Server"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/5.json"
    strategy :json do |json|
      json.dig("computer", "MacOS", "version")&.tr("-", ",")
    end
  end

  auto_updates true
  depends_on :macos

  app "Plex Media Server.app"
  binary "#{appdir}/Plex Media Server.app/Contents/MacOS/Plex Media Scanner", target: "plexms"

  uninstall launchctl: "com.plexapp.mediaserver",
            quit:      "com.plexapp.plexmediaserver"

  zap trash: [
    "~/Library/Application Support/Plex Media Server",
    "~/Library/Caches/PlexMediaServer",
    "~/Library/Logs/Plex Media Server",
    "~/Library/Preferences/com.plexapp.plexmediaserver.plist",
  ]
end
