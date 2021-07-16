cask "coscreen" do
  version "3.0.6"
  sha256 "235e4cc69e3a5b7df72ee82e22d7a7eebdd3930ffda353963fd53a905a4324ec"

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
