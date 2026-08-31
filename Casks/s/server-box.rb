cask "server-box" do
  version "1.0.1553"
  sha256 "93b1454cb9620558285fb992be3557a6a0ba88ff13333e8b6e0f1a7c1a3d322f"

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
