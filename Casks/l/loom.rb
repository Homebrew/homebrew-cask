cask "loom" do
  arch arm: "-arm64"

  version "0.237.0"
  sha256 arm:   "8c7949c51c777f6056bce8f34f3ad1b7d34a5e3d5a0c5a067c86db939407e01b",
         intel: "1aef6c2b1baa2bdddc4ed26a228eb9315b5f06e7c2f1c299f8403a7b1fb5aefb"

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
