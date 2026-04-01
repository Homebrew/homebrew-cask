cask "loom" do
  arch arm: "-arm64"

  version "0.341.0"
  sha256 arm:   "ba4c96049a35bbaaacbe940d8a7aa0f8f48a71891192ab1f0bf2501dbfcc3d2d",
         intel: "f3f4f77e5c2415367a06c81b35e0b18d31fd863b176ca9d83ef0f7d900bbdecf"

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
