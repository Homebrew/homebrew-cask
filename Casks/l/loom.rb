cask "loom" do
  arch arm: "-arm64"

  version "0.264.6"
  sha256 arm:   "7e260bf22562f089beab26d93434dd163e6c951ec088df24985de12866f29cc7",
         intel: "c92fa649818689b952221e6e780f16429a9f17bacdd11074455cf63d9b7bb1ac"

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
