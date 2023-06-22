cask "loom" do
  arch arm: "-arm64"

  version "0.164.1"
  sha256 arm:   "e4a58467c082eb7b79462d866613f626007592ab4a56edda4f2f81be2c52377a",
         intel: "e5dcedaf504443332b6daf1af2fe70b315870db7a6655aaf013a8497b6f22a95"

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
