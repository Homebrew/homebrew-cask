cask "loom" do
  arch arm: "-arm64"

  version "0.343.0"
  sha256 arm:   "5c2b8fa75d0494e26ff444fc4bc62a2b09582dd97531c6ed0ca94866b201d9f8",
         intel: "f400c64ee67c7b1de155b0024187a9b6e0ccfaaa4f4ad89bc47e754c6f676b41"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
