cask "loom" do
  arch arm: "-arm64"

  version "0.195.4"
  sha256 arm:   "0f0cceaef75dd4c9a6688c379aa65c5901c71ed57d1bb2693e3cca87f5b89032",
         intel: "3bdf4b4f82868aea2b53f0f811a355366cd4813e79d0956cc954488ea787dc0a"

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
