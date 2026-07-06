cask "loom" do
  arch arm: "-arm64"

  version "0.359.0"
  sha256 arm:   "9465dc2a6041525bc2fffaeb31120ee86cb82c29137cdc1401925b20289bd839",
         intel: "b83fbf03fdffd88d4853710b61b349820b6abbdcc4860b70382e5bb3d67306a4"

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
