cask "plex-media-server" do
  version "1.21.0.3711-b509cc236"
  sha256 "e50bb16bb590a13c731d967e8738bcfdbf1381601de7b426a4c1bd16055a887b"

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
