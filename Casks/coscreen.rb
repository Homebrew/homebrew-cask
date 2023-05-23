cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.3.10"
  sha256 arm:   "db84fd6de4fb416c3bcf6cdea9447355403f46cfe81a0da91226c50fc388d7c8",
         intel: "cc83412065e43f5b7168fd515384183c42f39d39439592621c67e67d1f6e7458"

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
