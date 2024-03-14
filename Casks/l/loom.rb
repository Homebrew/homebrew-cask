cask "loom" do
  arch arm: "-arm64"

  version "0.210.1"
  sha256 arm:   "78cbcc02885337deb43712657e69c419332d1ec1b43826bd2877d2b86339f39f",
         intel: "608f1a31df65b3facedeb5b779dce96d23c114551699ecc4cd47400ecd8cfeb4"

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
