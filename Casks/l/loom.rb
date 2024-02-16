cask "loom" do
  arch arm: "-arm64"

  version "0.203.0"
  sha256 arm:   "a0f7b37f4d1b634ff59cc27c3aded3070a7ae262008f282d6e1db81c7de4a5b1",
         intel: "f7fa6f8e721a535e59f450c8057d478e9f82126b9590d5fb83ea424dc68bacfc"

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
