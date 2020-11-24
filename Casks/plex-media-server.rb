cask "plex-media-server" do
  version "1.21.0.3616-d87012962"
  sha256 "8219e64b414f7bbbaf70703cc795561f564deefd21523304418f0c74d12bd85c"

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
