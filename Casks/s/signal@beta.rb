cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.44.0-beta.1"
  sha256 arm:   "8a5291852296678e7a8e40f2b85b7fc8edbdc65a0efa6bd22af8c5ee8ee3bdf1",
         intel: "6c00cc12bcfbf7b9a8999a3791ffeec9dc7c7dca79108b42aba1a992072afec6"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
