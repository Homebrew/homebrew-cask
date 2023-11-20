cask "loom" do
  arch arm: "-arm64"

  version "0.187.4"
  sha256 arm:   "7a87dd986c2cc55918385504266c2683ca1103937e0d332aa21462f52b485853",
         intel: "a7fa7c1ff6b89010866d5d5b3cd55d6a0830fc2ec136e97228633793d7cb157b"

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
