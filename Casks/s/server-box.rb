cask "server-box" do
  version "1.0.1365"
  sha256 "241a8ad2e2474f1db83569464d1b084f3c693be424b50b6043116bea3dbb8878"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management and more."
  homepage "https://github.com/lollipopkit/flutter_server_box"

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
