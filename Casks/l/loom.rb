cask "loom" do
  arch arm: "-arm64"

  version "0.192.3"
  sha256 arm:   "10daf6a7580677c5a2114043af168fcf36d3d7b60b4277224ee3f0f1d7bcd60b",
         intel: "2912210440c3c265b982453235af805a521b2f64fdd98c4d8d90f2176e41d968"

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
