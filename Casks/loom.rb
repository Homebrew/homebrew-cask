cask "loom" do
  arch arm: "-arm64"

  version "0.152.12"
  sha256 arm:   "75138c02ac3b1b7aae65da47c1df4af7bb739e59a01f0d3167dc42a840d3498d",
         intel: "a844a0070de138b45663480bb5df79d4d21a14c87eb70e5b7e31ac7397c9ef10"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
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
