cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.2.119"
  sha256 arm:   "01b8b8aef29a8eacc4d4a67b61a6fa5269f0cbda541d35001eb65adedae53ff4",
         intel: "3167f98e29b9b2b08e441fc71f41bac11f787a9e3d792004c27cb68aad29ded7"

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
  depends_on macos: ">= :ventura"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
