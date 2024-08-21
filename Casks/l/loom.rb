cask "loom" do
  arch arm: "-arm64"

  version "0.249.0"
  sha256 arm:   "3b9d3f699e8c5e9b532ef1b1e06e8a2d8e3b26986af582966685fc939ff33e98",
         intel: "bba29b9f2010a49ac8333ffe56765b009b6db0b28b48954f6e162725f8b68f43"

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
