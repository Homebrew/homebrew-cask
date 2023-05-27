cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.3.14"
  sha256 arm:   "3252a341202a43b501972a6acc7e4596ba05e5c11fc44708d2732db3496b120b",
         intel: "35ed2d1212a162e2d7ad8c7ec3bf09d9459fa51bff5428418a21dea77a5186c9"

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
