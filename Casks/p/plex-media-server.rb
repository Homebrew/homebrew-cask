cask "plex-media-server" do
  version "1.43.2.10687,563d026ea"
  sha256 "bd63fd2cf31f7776475d1c2a88ad2ab2db018e54df8e1c54fa1f2aacdda610b9"

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
