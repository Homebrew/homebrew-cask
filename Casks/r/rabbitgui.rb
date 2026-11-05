cask "rabbitgui" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "90f03ad424a8caa5d964bf26801c699570ed5a5e1664921c512c06cbf3746d64",
         intel: "268876aebfe20ccebcc9e517fdcc4cabd1df07e7db1019c2877a9fc6023f2e32"

  url "https://rabbit-gui-releases.s3.eu-west-3.amazonaws.com/rabbit-gui-#{version}-#{arch}.dmg",
      verified: "rabbit-gui-releases.s3.eu-west-3.amazonaws.com/"
  name "RabbitGUI"
  desc "Desktop client for RabbitMQ"
  homepage "https://rabbitgui.com/"

  livecheck do
    url "https://rabbit-gui-releases.s3.eu-west-3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "RabbitGUI.app"

  zap trash: [
    "~/Library/Application Support/rabbit-gui",
    "~/Library/Caches/com.rabbitgui.app",
    "~/Library/Caches/com.rabbitgui.app.ShipIt",
    "~/Library/Caches/rabbit-gui-updater",
    "~/Library/Preferences/com.rabbitgui.app.plist",
  ]
end
