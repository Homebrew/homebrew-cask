cask "loom" do
  arch arm: "-arm64"

  version "0.205.1"
  sha256 arm:   "9020933912527c6af5f03a65480a398b08045fd68f957e55a20eb1dfe7c08152",
         intel: "70697bee2ddfe8f10ab091280023800bd4e88adc3bc5c97907a1d92454653fab"

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
