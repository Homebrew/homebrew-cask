cask "coscreen" do
  version "3.8.44"
  sha256 "e83020c18d2a6f4e365dd61f899bb98f91ca1dba0b1e1d0882fccfee7adcb288"

  url "https://update.coscreen.org/CoScreen-#{version}-beta.dmg",
      verified: "https://update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/beta-mac.yml"
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
