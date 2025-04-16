cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.5.9"
  sha256 arm:   "28b58685c8fa43bb4e59092cb5d1418f4ab2680dec9cca6d12d2854e8b2b9ab3",
         intel: "5229c6f5963d171c4f199014c647425a15cd4f045371d73eb3695f592e8d57a1"

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
