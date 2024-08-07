cask "loom" do
  arch arm: "-arm64"

  version "0.246.0"
  sha256 arm:   "d6c139bbd53b516415de090d4ace0bc7dcb3e592d820fe44d21c9aaed4710f8d",
         intel: "6252702f5376079cf965e59edf038e61cd912fa0995ec33bc7dc39381fff4f88"

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
