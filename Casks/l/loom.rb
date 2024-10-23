cask "loom" do
  arch arm: "-arm64"

  version "0.258.1"
  sha256 arm:   "bd28b4ec943964f04a6cc582396f3bdf9a191989aa0f2a804fd37c281a7e281a",
         intel: "14089914365a30ef34abf983a0d39d7b8a27db791417e49f9ca3640e4e98db55"

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
