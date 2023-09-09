cask "loom" do
  arch arm: "-arm64"

  version "0.172.1"
  sha256 arm:   "e17a5043a3fce7431bd9c43d0bfe5b1430dd0730affa4b19628acb047d78f423",
         intel: "1a4bb98845f04e14452bb22b0b755d5ff48213ba004d84b053cb7819e7ce6f65"

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
