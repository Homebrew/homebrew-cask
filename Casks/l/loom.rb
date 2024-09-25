cask "loom" do
  arch arm: "-arm64"

  version "0.254.3"
  sha256 arm:   "84cf57ec9b62797e087e85c999bea1e10a0a279318eeba50a55854043aee125b",
         intel: "0b1db21b234fed299c711191a4b9cec286841ce0b91ad69ec7298066cfd1624c"

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
