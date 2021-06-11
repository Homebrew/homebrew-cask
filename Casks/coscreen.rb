cask "coscreen" do
  version "2.3.17"
  sha256 "8aeae9429ab1e678bc5caff32dc87202a588b3a3d557ab619edf071135ec0ac6"

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
