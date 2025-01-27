cask "loom" do
  arch arm: "-arm64"

  version "0.273.1"
  sha256 arm:   "706e31f8f4da6992a41d7e3e5c59eac8a4826fca8042c95d2f49b1b910c4b867",
         intel: "acebfcd686324fdf555fe772b68a7ee5b95a0d4c0eeb030f5d4682cfbc1b030c"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
