cask "loom" do
  arch arm: "-arm64"

  version "0.301.1"
  sha256 arm:   "86e022766e7a81ad6d811dacd72d0055ae91b9d59e845b34ddc33342500b47ba",
         intel: "b1887ebebcb0e45da4ddcf601fcb4595804b5aede5df9d3ab21c52ed4577b7f1"

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
