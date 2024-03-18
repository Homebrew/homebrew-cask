cask "loom" do
  arch arm: "-arm64"

  version "0.211.0"
  sha256 arm:   "d962b858bcf7db3668d1087b1cfab4f24ef4424f14708ad85d6d8e484c080fa6",
         intel: "2ca3112e2dcb6d6e29661627ee3c7cebd6ce9909ee63da83b4c44fde72f9cdff"

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
