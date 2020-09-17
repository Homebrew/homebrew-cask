cask "plex-media-server" do
  version "1.20.1.3252-a78fef9a9"
  sha256 "d21ec08cd2e272d9f78e0412f0ab731d5b91c072948f5922bfbd91c7b6512c06"

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
