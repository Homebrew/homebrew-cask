cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1773"
  sha256 arm:   "e59dc6d4595af9f0d87ce4a936e658241a554959885ff1fa125d9d7034fba75a",
         intel: "f39bdbfe9d14bf6352f1a53c1bd12f94ab773f6027ec1c5b0c05a5fa9f5a47f5"

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
