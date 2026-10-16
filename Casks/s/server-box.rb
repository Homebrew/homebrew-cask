cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1787"
  sha256 arm:   "2f11d7ae8d056ad6e84cf67070fbe57b44215c1c3ac4f3905e399840c064cc5d",
         intel: "ae52d7088b7b183c24e4d7abe2f31c41e0a8e37930e7f9d5b9418de07306c6c7"

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
