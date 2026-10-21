cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1816"
  sha256 arm:   "d10539ee5a72bebe9bd8028a21a610b3ee41d692345aa2b5c3ccddc844326d6d",
         intel: "87680718979d4d725e2f35b46705c0177db1042bc7de3f33b382ad12c0987914"

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
