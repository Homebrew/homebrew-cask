cask "coscreen" do
  version "3.14.59"
  sha256 "a976e9aca030567740640e31ac0c5d868147e4db1ebc1adb3460b8bcedbd27fe"

  url "https://update.coscreen.org/CoScreen-#{version}-stable.dmg",
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
