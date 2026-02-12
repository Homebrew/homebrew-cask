cask "loom" do
  arch arm: "-arm64"

  version "0.333.0"
  sha256 arm:   "8309f1a97bcd00e769b497d1f4f57500fc60c0603dae18a39fd93789054a3c00",
         intel: "0f2a09f9026c31de925e8bf97578923f90e92011ae14aa8eb78fed207cb65d72"

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
