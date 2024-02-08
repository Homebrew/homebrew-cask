cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.4.17"
  sha256 arm:   "ba06aa8ecb7428ae24de8e253f8fb024075250849295c9bfc3e47bf79559c276",
         intel: "2a3527375fa239ee0af09c5463f424760f73838886e4d2df44052163ecc27c34"

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
