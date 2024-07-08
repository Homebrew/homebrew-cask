cask "loom" do
  arch arm: "-arm64"

  version "0.238.0"
  sha256 arm:   "22d135a8845e476d587722000ee975ee446223c426f3442f5c8e9c78352b92b9",
         intel: "fbae5b3416000f82f8ede12f88ca097b8729c1ac60e19fb790e61820e059ece7"

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
