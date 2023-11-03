cask "loom" do
  arch arm: "-arm64"

  version "0.182.3"
  sha256 arm:   "737bc5477ff4a03b29319c2879ab8aca76f400630a82796c1a70b3b12a755c16",
         intel: "6674d4f8344e8d4fb72094356610fc242519826325335566b7acdc05f7de1a00"

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
