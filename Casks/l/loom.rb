cask "loom" do
  arch arm: "-arm64"

  version "0.247.1"
  sha256 arm:   "33b609212c2caceb997af6d139e63c0c9018645ba8ec4b234bd23375cd7089c9",
         intel: "7bee9f61f903cdfc98aa2b6da582d930c8ac3804415f19c3cc3e7f0c25e3dde9"

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
