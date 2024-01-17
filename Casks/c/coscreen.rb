cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.3.34"
  sha256 arm:   "6b30d8548d4ac2fd57487add40677dfa0842f69bb491fc63f83938b291bd7835",
         intel: "1331b2fca845948ada1e9163b3a91d6473ce6e7f10a6402894b74ae19517aa25"

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
