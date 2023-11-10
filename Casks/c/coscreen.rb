cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.1.58"
  sha256 arm:   "c1b2aeb09bf8322ded169dd195864ea1e96a06dc02f89cffa7111538c0a1c0e5",
         intel: "d420de626f38373b234e8ce78f546eb6ee858a46efcd355ab81a2f40ab1d2ef9"

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
