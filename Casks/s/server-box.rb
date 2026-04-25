cask "server-box" do
  version "1.0.1390"
  sha256 "309f00b9511e196b19afb638c5961f4cb3c8d27769dea8566ddc684f0ace59bb"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
