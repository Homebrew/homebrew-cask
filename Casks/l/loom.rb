cask "loom" do
  arch arm: "-arm64"

  version "0.262.3"
  sha256 arm:   "78e56b4e46c16be3e078e853e82041505f2966fb1427629a1a4936c25422a314",
         intel: "8bdd3cc1698ecb29744096b16d409e4597ced2a774ce84e8c3397ae2f947f6f9"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
