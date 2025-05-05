cask "loom" do
  arch arm: "-arm64"

  version "0.290.1"
  sha256 arm:   "fdc4268c81f93f7f425a9b11bec64b6bc486ec215b15713accbb6ddab7c03e07",
         intel: "9d3118f781e6467dd68b344854e7fa6f983ec27c6a935adca0188a75442dd058"

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
