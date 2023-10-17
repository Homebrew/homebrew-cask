cask "loom" do
  arch arm: "-arm64"

  version "0.179.4"
  sha256 arm:   "3f2bb14de1d9bcfbb7563fe7abe1d0cd70e96933af3aa30a73878fedbe417c12",
         intel: "ba0b543c8c05d68cded3573cbda86a09879c5a59ed3682d9158e18bc37a6cec0"

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
