cask "loom" do
  arch arm: "-arm64"

  version "0.345.1"
  sha256 arm:   "dc837812b1e3255575e44e72b0a84f34b0f6500e91af32b234eb65f8fcd115ad",
         intel: "9c345f1fd9f3f4bb9c083c8cfc3473176511862e37ee4743c16eb550c3049126"

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
