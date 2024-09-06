cask "loom" do
  arch arm: "-arm64"

  version "0.252.1"
  sha256 arm:   "4033c3bf0c9de9881cf5525139710962165a8ed239c4ff185064600486799744",
         intel: "339c679b8a9f629b98762453276f9e95a946a660583decd813d6aca72fd7a731"

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
