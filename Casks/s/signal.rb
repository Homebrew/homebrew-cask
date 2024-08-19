cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.20.1"
  sha256 arm:   "5ae0f5d08fcdf75bcbeb84ed2d5651a732bab9e1355dfa4a41688230e289de62",
         intel: "d35be0c4f1b84ec8d310e2051ecc03757dbfe08b14b4df12792aaff33b30fbb4"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
