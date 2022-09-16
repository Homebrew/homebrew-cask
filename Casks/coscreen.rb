cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.1.61"
  sha256 arm:   "28a8a279a14c415aa16279e99803b2da09b3b59a8d89c7c91af9cd2a48a99580",
         intel: "e9ede692b6cbe9ae24ad8e7aff25beef253e5e52b870fc7ebbfcc046235b14ae"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "https://update.coscreen.org/"
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
