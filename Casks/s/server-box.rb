cask "server-box" do
  version "1.0.1466"
  sha256 "bfa434ecac2dd6f7f27f1511edbc8077f6a9c801896ad9577b1387cb441cea68"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on :macos

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
