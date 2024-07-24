cask "loom" do
  arch arm: "-arm64"

  version "0.242.0"
  sha256 arm:   "bd1ebfd565de34c670d98d9e47592a5172f392f05a75413b0243d643ddc9d58c",
         intel: "dea724113acabf9641bb46a77255248ec07c07270ac2acd99449138b86fd6b1d"

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
