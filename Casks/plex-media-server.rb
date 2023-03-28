cask "plex-media-server" do
  version "1.31.3.6868,28fc46b27"
  sha256 "04da728c6c173e97c76a676e173dd2c9f62b686ed9263a13b24770c3c6c0294e"

  url "https://downloads.plex.tv/plex-media-server-new/#{version.csv.first}-#{version.csv.second}/macos/PlexMediaServer-#{version.csv.first}-#{version.csv.second}-universal.zip"
  name "Plex Media Server"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/5.json"
    regex(%r{href=.*?/PlexMediaServer-(\d+(?:\.\d+)*)-([\da-f]+)-universal\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

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
