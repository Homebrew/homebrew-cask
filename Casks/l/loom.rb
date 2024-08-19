cask "loom" do
  arch arm: "-arm64"

  version "0.248.3"
  sha256 arm:   "9f12ce5ba7bb15c7de508dcc0685cf28c103e1401e717518ab8d57d6cba6e667",
         intel: "bb941e8464eddb2d86409c4c65d6ae8aa7e0388fe0a230c54f30f0b0dfd98470"

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
