cask "server-box" do
  version "1.0.1450"
  sha256 "496035764db99a314029f18df64ecfc6f332f0f8e0e5641794b03713c3994c84"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on :macos

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
