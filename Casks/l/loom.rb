cask "loom" do
  arch arm: "-arm64"

  version "0.357.1"
  sha256 arm:   "0511e9a79a63db511c90f9e1e5d31329477329025c1addb0622fb173d5517f17",
         intel: "ec46cfa94a491e6cd5f97771cd89be2b1dde6e509e19f7bc55a71a60d07ea5c5"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
