cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.10.11"
  sha256 arm:   "251cca5b0b4222c64ae64d5282999cbecafb80ee2af73100d8b4fd8cf2270f5d",
         intel: "cddc00ec3bf94f3f916bb6a89b500828ccc178f1c28a1a2ac9d7411f25b1a6c6"

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
  depends_on macos: ">= :ventura"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
