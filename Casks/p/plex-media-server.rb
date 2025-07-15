cask "plex-media-server" do
  version "1.41.9.9961,46083195d"
  sha256 "ac4077700fb251c5b126a76da19550a03df78155bb112848f96aed8580e55fd7"

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
