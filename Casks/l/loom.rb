cask "loom" do
  arch arm: "-arm64"

  version "0.231.2"
  sha256 arm:   "948b506f093a90a3933bf8413cf765b7b8544892f124a975fed04896bfd15cfc",
         intel: "64e77324cf3c469b691188e2dba67d68212b6d5d37b5c151607d0a11567aa9b6"

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
