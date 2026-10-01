cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1719"
  sha256 arm:   "eee0ca5253c1ab93d4365dd1a4002507ba6fcf81d6b6c92281074d74b7e10762",
         intel: "68db6ff5b477cc8d4685eb15849dbfc908312e329c7036af7fbcbd3c7827df44"

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
