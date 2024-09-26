cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.187"
  sha256 arm:   "069f6bf64a3dbae73352b8680a2c14f1497d229182bebb61a87d1134b1f9841c",
         intel: "2448543a4b20207b70df5d27002b6f3879575bef18ede93e8796c1d2ba4f15a6"

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
