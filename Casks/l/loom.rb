cask "loom" do
  arch arm: "-arm64"

  version "0.228.7"
  sha256 arm:   "58d4952ae59b24c12f91e0cd7221a1836d2f2b90fe9d79f37faa8c6ceb874a3f",
         intel: "59e32d95b0e72ad05c318bbc018bc51d42193022f7f0c67ce90870b894b38634"

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
