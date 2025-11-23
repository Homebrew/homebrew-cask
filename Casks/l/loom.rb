cask "loom" do
  arch arm: "-arm64"

  version "0.323.1"
  sha256 arm:   "3e1e3b2ded6f9e1bbf35dc58dfaac14f67d7a70fd1e0f73cb1027875cd3f99f3",
         intel: "6a03b4d012ed9dd434524e3958488906e795493daf793bec5856baf199452175"

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
