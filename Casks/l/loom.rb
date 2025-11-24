cask "loom" do
  arch arm: "-arm64"

  version "0.324.0"
  sha256 arm:   "5545e845dc3fe63cba95eb272ea3ed9bf825c6d3c5822a6acae291d9a55f8ca7",
         intel: "18a379d511aa076d1786fd80a32d5dd1298252e1384ef0dcdfa6dc24d7c103b2"

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
