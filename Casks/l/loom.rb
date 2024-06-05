cask "loom" do
  arch arm: "-arm64"

  version "0.230.0"
  sha256 arm:   "4fcfda73160d2143af3d58a9df99657797f7e4253626aac388cbbf2aac5b414c",
         intel: "a59ede01469e62d53a0f163fb65ddf524c852de1bae6963343a1ac1f5869d3f3"

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
