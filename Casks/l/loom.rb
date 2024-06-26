cask "loom" do
  arch arm: "-arm64"

  version "0.235.1"
  sha256 arm:   "c911dabf6a398cca914fca546f4c7ce33289bc2c30fb0bd4edacb498aab8c825",
         intel: "f0079ea41f636ee28b0a93ff9d0bb02ca9952f4a9edf503a65512cf752c3298c"

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
