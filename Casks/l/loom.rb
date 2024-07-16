cask "loom" do
  arch arm: "-arm64"

  version "0.240.1"
  sha256 arm:   "db4270a3df3a4ad7b54c81f69db7f5ebad9c8ab57d7d65fec78513e0b7219d59",
         intel: "aefb30723077afeb402fa2acc093a5cd7472040c8b07edc6212afc6fefb2e3aa"

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
