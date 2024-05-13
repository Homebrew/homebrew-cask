cask "loom" do
  arch arm: "-arm64"

  version "0.226.1"
  sha256 arm:   "012de34baedf27c6dd98a3161a0cd6d9c4ee7c371950b5d4ad81b4e0ef6933f1",
         intel: "84d0b1b8bf48a679637ac51fcbc6efbaca901639bea6f8d679340b69285ad84c"

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
