cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.5.24"
  sha256 arm:   "dcc2a63fa2128c3e446c5cb59f198989fea74e17886e8ac75434d716411af055",
         intel: "1ff331122c3913ce52f707c4c2b957b5b6d1eb370dca434f199f17eaed03142e"

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
