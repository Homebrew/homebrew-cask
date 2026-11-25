cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1962"
  sha256 arm:   "8d68b8395b563395b0cee586102f766b98a32ab493df39c831de8f1177cb64f2",
         intel: "177f7382403574cc7a48a72de67d2b9f1fb7d1254e7b1c19a3e352c5a193d0a6"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}-#{arch}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :ventura

  app "Server Box.app"

  zap trash: [
    "~/Library/Application Support/com.lollipopkit.toolbox",
    "~/Library/Application Support/ServerBox",
    "~/Library/Caches/com.lollipopkit.toolbox",
    "~/Library/Preferences/com.lollipopkit.toolbox.plist",
  ]
end
