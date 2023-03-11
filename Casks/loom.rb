cask "loom" do
  arch arm: "-arm64"

  version "0.158.1"
  sha256 arm:   "0088cecbf8a8e27b13e8e84f0a5b40c09fee75d1fc31e336d8d1823b82caf742",
         intel: "38cd49d063bd26b87b8b22776613c4da6083815bf58ca92c5c2ca83ce2d3823e"

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
