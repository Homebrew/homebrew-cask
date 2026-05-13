cask "loom" do
  arch arm: "-arm64"

  version "0.347.8"
  sha256 arm:   "2168980b79c102e272ca0fa42a44b48424c4e58e2e56ba5418984ac1946a82d6",
         intel: "06b72aa46ba32b2fe921c8dfcceef86f93f9e5b57e521e6ccedaa0cb6f5d228f"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
