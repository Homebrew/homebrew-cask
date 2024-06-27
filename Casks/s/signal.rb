cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.14.0"
  sha256 arm:   "3cf01d235e906af556f37f0713aba06563a8eb5e7183433a94c0bdb86a346d20",
         intel: "753336640225fd04bdaab721ff93853e965aad17f3d533e455995f7ad41652ad"

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
