cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.17"
  sha256 arm:   "15c8024e560770e7ae372d2400e0d0b87f17ccc9374798d33f8aac69868c1d98",
         intel: "4ccea3a7092a47a26ade6ce67d114cfe9f507824737623bce5de47a2c1b01fbc"

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
