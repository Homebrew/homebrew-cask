cask "loom" do
  arch arm: "-arm64"

  version "0.160.0"
  sha256 arm:   "013b88ea56295be6b3d7997c513fca693d4d67c5725cbb9353702d4f22e55b36",
         intel: "1eec619830d3535ae628e691ffbddc62230384697d1f646eb01a3bbe80a2cd87"

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
