cask "coscreen" do
  version "3.3.35"
  sha256 "284f6f96310de70751bfaae0bb84ab110db4fa3f581b8d96c34db483679de83f"

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
