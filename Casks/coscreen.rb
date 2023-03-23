cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "eb88e6e449b596f85d0ba27f2ee88fcb2c8b676ed7f52f4014ea8a6559985ca2",
         intel: "8c8f706dc4ed448d823eeb136b30c1342ad5b777e572f7da2dd03af3ede921ec"

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
