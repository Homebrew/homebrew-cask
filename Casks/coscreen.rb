cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.3.24"
  sha256 arm:   "d4e81ff326235ddf0179af46333c587da9cbe3eb63785840e10fda2ec9b13ccb",
         intel: "e4984d5363efdc9882f1f1af57d1df0875051324156d6863b1625f1232864520"

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
