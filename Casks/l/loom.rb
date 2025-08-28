cask "loom" do
  arch arm: "-arm64"

  version "0.314.0"
  sha256 arm:   "93931a48ad7d76b46196fda003211b496eacffd9e3ebf9fb5f6cca2a865be866",
         intel: "aa5e446e28a300b3f679310c6c45bb3e68682d073f0a8c73765dad91619ad0a9"

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
