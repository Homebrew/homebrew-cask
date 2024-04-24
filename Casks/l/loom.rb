cask "loom" do
  arch arm: "-arm64"

  version "0.221.0"
  sha256 arm:   "69132554ee9fd87d72501dce2aa3b3e349759f05484dd637463b4aed57c364a9",
         intel: "3b72bb06ab317f4d780c6d4eb0ee87cde7ef1b3eb3c08cc2e6e6bfafc9cd98a0"

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
