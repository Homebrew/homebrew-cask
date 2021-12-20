cask "coscreen" do
  version "3.8.30"
  sha256 "aad923df44b94956591bdc41e7d7e734f7412087b0ecb438c1e54ae5b42ee968"

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
