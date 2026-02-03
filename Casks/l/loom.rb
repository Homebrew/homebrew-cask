cask "loom" do
  arch arm: "-arm64"

  version "0.331.1"
  sha256 arm:   "1a144a9dc321587f28d105232c8e8f7fe41be622a7f66cd738372c41178daa30",
         intel: "38ed0fdda81d9e2f458fb797e6055ab307cd59e773d64d0a2e440ba32b26dd88"

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
