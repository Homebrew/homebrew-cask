cask "loom" do
  arch arm: "-arm64"

  version "0.225.0"
  sha256 arm:   "d506f46d46a685882bf09a2940c41bc50f5cdd20c7e751679b73134d03a4e3e9",
         intel: "0929447c5ed6077233cd9810abea617f9f912434b888ef28f1f5668f3e644e2c"

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
