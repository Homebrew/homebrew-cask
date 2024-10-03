cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.27.0"
  sha256 arm:   "449df296a9337f570f04cb6575ccbca25b7bac6b787e17a8aade49d691a41886",
         intel: "f726029b8432bfebfb777684ebc9ccddfcc489dfa42ea2d060b4906d5360e4f9"

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
