cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1617"
  sha256 arm:   "5169e4179c3994da9d7d762f8ddef6f9a69b619516915bb592287f6aeccc7ecc",
         intel: "1d9dd639e6255b58bcaae57aaa69912fc1dd9149eb9cae11b2b2e683ac5386ac"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}-#{arch}.dmg",
      verified: "github.com/lollipopkit/flutter_server_box/"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :ventura

  app "Server Box.app"

  zap trash: [
    "~/Library/Application Support/ServerBox",
    "~/Library/Caches/com.lollipopkit.toolbox",
    "~/Library/Containers/com.lollipopkit.toolbox",
    "~/Library/Preferences/com.lollipopkit.toolbox.plist",
  ]
end
