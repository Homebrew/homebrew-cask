cask "plex-media-server" do
  version "1.21.3.4021-5a0a3e4b2"
  sha256 "824ab75a796f22daf19baae22b2eece125196de99eb357941c32d19201028af1"

  url "https://downloads.plex.tv/plex-media-server-new/#{version}/macos/PlexMediaServer-#{version}-x86_64.zip"
  name "Plex Media Server"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/5.json"
    strategy :page_match
    regex(%r{href=.*?/PlexMediaServer-(\d+(?:\.\d+)*-[\da-f]+)-x86_64\.zip}i)
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
