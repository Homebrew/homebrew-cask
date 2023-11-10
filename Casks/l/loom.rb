cask "loom" do
  arch arm: "-arm64"

  version "0.185.0"
  sha256 arm:   "13750e38f905f20f888b345a46e60468712f45d9b1a85578a6bb4a7cc6b3156f",
         intel: "01954afa783397ae952b284e7ed83745534b48fe71e0faf3efbb50515dfcad6a"

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
