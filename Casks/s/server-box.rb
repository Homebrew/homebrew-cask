cask "server-box" do
  version "1.0.1409"
  sha256 "c084785bb17b7c88c717cd02387be48db7b1576111733d70280058f6c881bed8"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
