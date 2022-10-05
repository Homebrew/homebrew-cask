cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.2.9"
  sha256 arm:   "4bb0b6ca97ff06e2a73d006b13eb1599ffe1120707d72e213d5443c6dd2b0b2a",
         intel: "aefc10c2d78634a3303354021d2f06054c5589793ffc30af7515db10ff4ff705"

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
