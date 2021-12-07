cask "plex-media-server" do
  version "1.25.1.5286,34f965be8"
  sha256 "1937f60e51ddd704f3c7e6b60ce9a4e67dd5ac316f5c5c8bd44b8e549df3816a"

  url "https://downloads.plex.tv/plex-media-server-new/#{version.before_comma}-#{version.after_comma}/macos/PlexMediaServer-#{version.before_comma}-#{version.after_comma}-x86_64.zip"
  name "Plex Media Server"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/5.json"
    regex(%r{href=.*?/PlexMediaServer-(\d+(?:\.\d+)*)-([\da-f]+)-x86_64\.zip}i)
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
