cask "loom" do
  arch arm: "-arm64"

  version "0.321.4"
  sha256 arm:   "b425ccc731d16d82f3f3da63390c077bbddd4cb4c1fd6f377b94ae4acc6ad8b3",
         intel: "5017c0ee14764c8b0aabdf164359bd55347133c8c866cad4a1393e8612154b6f"

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
