cask "loom" do
  arch arm: "-arm64"

  version "0.274.6"
  sha256 arm:   "ae247f3020ec63ef8fafa791f3fa3cc037e84136238bcf156123c9f0bbfa81e4",
         intel: "a0e1fa0948a4d15ef77a5039d27dcb59bdc27ee9eeec82ce2d63a1adc5415477"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
