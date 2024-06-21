cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.30"
  sha256 arm:   "d48edf78f6e31819ca7e2093e93e911abc6166bc19e1aa2ed8911c77d47fb410",
         intel: "add9883fa69032c9905fd88ac75ab2df4ada83bca0b737bd9d5c8fd32ef16470"

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
  depends_on macos: ">= :catalina"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
