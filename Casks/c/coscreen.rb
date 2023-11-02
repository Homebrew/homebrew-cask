cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.1.57"
  sha256 arm:   "dd3e72ae8b9e8c08da6f3ce9e56c4967fa570fb7422cc1b00c20b6bf7f0b236d",
         intel: "2f95434355d5de8b4f7cbb705c79e5f13dcfc41c1b383876271105f1fa179337"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
