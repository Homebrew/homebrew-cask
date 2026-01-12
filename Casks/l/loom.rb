cask "loom" do
  arch arm: "-arm64"

  version "0.327.1"
  sha256 arm:   "7d867d3d5df5de92d106de84bcd6650cbf5afb8f40a9fb0214014cf681709266",
         intel: "a16bf70a6eac19685f6bc31bebeedb6af68e1c360b0dbfba75d251fabb35366e"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
