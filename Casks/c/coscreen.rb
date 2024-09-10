cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.144"
  sha256 arm:   "200cde1249bfcf8d54ed25bf94c71f0691c0ad2780d6a0b7450568f1408039f4",
         intel: "f1e923910b3350c4ae822da12c7a1405d502ab2e4b2b6be6b83db62a2ff381bb"

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
  depends_on macos: ">= :catalina"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
