cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1856"
  sha256 arm:   "3a46d882f057208a1d8204e88fe1c4fc278b4cc39bbdca0920b1a1954a257149",
         intel: "d8db51819ca3971e5259f3f679dc719bd2e22d576fe2d8b41e1ce32a89bd9360"

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
