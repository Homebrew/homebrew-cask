cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.5.28"
  sha256 arm:   "dc8d31111f9d2417ebc013b0dad6731a36caec83c8d38c4a3cbdd5eda5649666",
         intel: "929919a8cd262cdcaff65e636eb8fa55b5d4e288cae776984d75fe3ca7c5758f"

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
