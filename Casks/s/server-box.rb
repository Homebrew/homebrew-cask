cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1765"
  sha256 arm:   "6d727419c9b0b0516294cb5e8eab94336a5b6c6ca18c1283f015015a96ba6a64",
         intel: "8fd6c7911512b8eec78031f01ee4ee9485be50617ff7e6b908a8e8bf276c04ff"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}-#{arch}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :ventura

  app "Server Box.app"

  zap trash: [
    "~/Library/Application Support/ServerBox",
    "~/Library/Caches/com.lollipopkit.toolbox",
    "~/Library/Preferences/com.lollipopkit.toolbox.plist",
  ]
end
