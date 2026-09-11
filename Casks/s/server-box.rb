cask "server-box" do
  version "1.0.1574"
  sha256 "c79fd3130f7873d5c4efbb5083816808217df29604b43bd8dfe35c97d4ab6531"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :monterey

  app "Server Box.app"

  zap trash: [
    "~/Library/Caches/com.lollipopkit.toolbox",
    "~/Library/Containers/com.lollipopkit.toolbox",
  ]
end
