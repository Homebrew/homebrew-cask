cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.0.2"
  sha256 arm:   "0e6177288d21fe19a85faca7c89ccc02803103953aa09f5b09187ef1f2f98ce0",
         intel: "db6d973f871812566de07f702d8454fcdd1588b85780cac733a1a5310d314ae8"

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
