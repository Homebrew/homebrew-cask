cask "plex-media-server" do
  version "1.42.1.10060,4e8b05daf"
  sha256 "c3955f8724554eea846c10302c65683df426d8346027103aab63762c4ab81e5a"

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
  depends_on macos: ">= :high_sierra"

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
