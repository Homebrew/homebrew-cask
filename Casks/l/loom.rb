cask "loom" do
  arch arm: "-arm64"

  version "0.334.2"
  sha256 arm:   "f09b56374a20f784b3f1c91d3020712391058066889e63ea0c5b782383d6a132",
         intel: "bed61446c8258009b3af34dd40c0a10199a6da7346034b9dac41878aaf4a8524"

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
