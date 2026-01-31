cask "loom" do
  arch arm: "-arm64"

  version "0.330.1"
  sha256 arm:   "61ea5bdf73eeaf6e1a1d9209731a8357014d7c06ae85f424d97bb90ede209624",
         intel: "4814b020996cd958f17d4de8963d5f5d3fa449f56b82ee302c472eb5c801f33b"

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
