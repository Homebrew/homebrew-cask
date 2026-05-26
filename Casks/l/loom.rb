cask "loom" do
  arch arm: "-arm64"

  version "0.350.1"
  sha256 arm:   "b86d6a6f85b48cc4192f1cc683bde67b7e9b68f637c5b6dceffc7a4b0013aea0",
         intel: "00ade2ed16b9c16e6407cc456870927e238325c0a1e44198e6d6e389c0f048f0"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
