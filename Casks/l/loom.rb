cask "loom" do
  arch arm: "-arm64"

  version "0.167.1"
  sha256 arm:   "8b3156b1773e5db924369df5504cda153bd818ba0f6927af6a9d3556cea22f5a",
         intel: "767df19951ef36a300f796d94a3bea8d4cb1dd4c3eb1ee7c976404dcde33fcf1"

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
