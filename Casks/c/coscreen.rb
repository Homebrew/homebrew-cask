cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4"
  sha256 arm:   "f27de0f06a31c08be81666548b415a34617ae80866261319678d4a1ce7ab057c",
         intel: "b21ca7d81f46bb606655696a2deefd572089ce5380906bcbb9eff34773edbf7d"

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
