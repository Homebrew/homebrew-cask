cask "loom" do
  arch arm: "-arm64"

  version "0.298.5"
  sha256 arm:   "fa975ccfcbfa3399be7d8e09352c90f932c0593822966088d1f9584d607fb99c",
         intel: "e29034825e5d22a4fae45fe4851fa09cf3c277963688f72dbfa86e08c6dc7763"

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
