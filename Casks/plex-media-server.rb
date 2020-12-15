cask "plex-media-server" do
  version "1.21.1.3795-ee64ab56f"
  sha256 "47b6732eaed4a8d3d64b3992b5590e51cdb788a107452fa3bf6fba367914c4ea"

  url "https://downloads.plex.tv/plex-media-server-new/#{version}/macos/PlexMediaServer-#{version}-x86_64.zip"
  appcast "https://plex.tv/api/downloads/5.json"
  name "Plex Media Server"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  auto_updates true

  app "Plex Media Server.app"
  binary "#{appdir}/Plex Media Server.app/Contents/MacOS/Plex Media Scanner", target: "plexms"

  uninstall quit:      "com.plexapp.plexmediaserver",
            launchctl: "com.plexapp.mediaserver"

  zap trash: [
    "~/Library/Application Support/Plex Media Server/",
    "~/Library/Caches/PlexMediaServer/",
    "~/Library/Logs/Plex Media Server/",
    "~/Library/Preferences/com.plexapp.plexmediaserver.plist",
  ]
end
