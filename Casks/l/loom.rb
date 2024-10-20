cask "loom" do
  arch arm: "-arm64"

  version "0.257.6"
  sha256 arm:   "6fa813e08db6d74a21b93765a8188aae0a00c84a5cce9fae1972e7a60ab8ee92",
         intel: "cb123f5368eb748eac01e7b7885289554c8f1d5e39274f77a781b8c311144f8e"

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
