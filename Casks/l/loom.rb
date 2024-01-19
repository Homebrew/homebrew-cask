cask "loom" do
  arch arm: "-arm64"

  version "0.196.1"
  sha256 arm:   "7f99052b697965d02be529d34f0d59d28af02eeef979c5f0a4faddeda37c2e63",
         intel: "bb0e16d29de3e9c2eba2a922d39517522679ec1e241f5c3c8068766b7d71c8c4"

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
