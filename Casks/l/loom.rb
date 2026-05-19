cask "loom" do
  arch arm: "-arm64"

  version "0.348.4"
  sha256 arm:   "8370273e552345ca1855c99ec94f92ad54b0dcb8b5d09d5025fa041c644daec0",
         intel: "73904a5648efa3b88bdd6e2c3a7a418b782d89da2f2c359e30e2e2a515840b9e"

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
