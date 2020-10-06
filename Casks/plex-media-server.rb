cask "plex-media-server" do
  version "1.20.2.3402-0fec14d92"
  sha256 "98c416600cf3e573aac4efdfb1ad8373c2d1f54fa93361b09c06721d016b4feb"

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
