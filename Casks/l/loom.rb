cask "loom" do
  arch arm: "-arm64"

  version "0.204.2"
  sha256 arm:   "22251069612eabc8a96e79207a208d96d862a9bf2c239c903c9f4200cd239f0b",
         intel: "611a3bb6fa83c346290b45fc2a90c205897ee6a411b113932ce7d6b0d15f75c2"

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
