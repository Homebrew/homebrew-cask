cask "loom" do
  arch arm: "-arm64"

  version "0.142.0"
  sha256 arm:   "ce7e95c01168bbeacc92be1da7a749851aa5d4c5d716db300bc912055a8566d8",
         intel: "780ce8afd48f3dd47fd8b75c68823048dfde25e559db140ab4e437b1f6141fb4"

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
