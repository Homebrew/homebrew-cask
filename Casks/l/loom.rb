cask "loom" do
  arch arm: "-arm64"

  version "0.213.0"
  sha256 arm:   "871cef328ca393d88321116f22bfa4edf9716f5eb56a9bfa0b1719fb2fc52d0b",
         intel: "b8b20da441d9576f42678d72d4d64da1608507500ace851467275381221d5085"

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
