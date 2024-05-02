cask "loom" do
  arch arm: "-arm64"

  version "0.223.3"
  sha256 arm:   "5d7df26d5bf552ed5d0be7a10712d9bdd01f5123e3698e140962832eb549d9e2",
         intel: "bfcef8b8be334c62592b9092bb70882bd2a9a9f0b57e4754a6adecf1b2831677"

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
