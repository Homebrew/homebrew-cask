cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.5.26"
  sha256 arm:   "20a2e17a8149c80fc6e327ae495a5bdc8806c2b11d901dc839a676a7d6e3cad3",
         intel: "752bf26f9089f14d5494b4d56335e364418eb592c32f713d448450f368f7b580"

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
