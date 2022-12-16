cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.4.57"
  sha256 arm:   "87f82f0073b87f6172b31ce203f8645cdbc03ff9f4f02ef765929df091a87aa2",
         intel: "17655546a245535e09af55ae120640e4f7afb72e8be5e6b2be048e8817775d64"

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
