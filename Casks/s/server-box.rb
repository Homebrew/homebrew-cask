cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1925"
  sha256 arm:   "af2ff6d624d2ae7146418d167820f801f136d7701af52224f93f8442fd0c5823",
         intel: "af41d3fec0e8ea3f74fe86a20c8b70a26196cf427a36f0970e4869bc2dfb304e"

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
