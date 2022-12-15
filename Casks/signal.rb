cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.1.0"
  sha256 arm:   "32f2bcd01dd06dabc3b6ab68857cd6716690daa703912190db65b1af6a002eda",
         intel: "b1a2ab77c99dce19ec46e207b100cbb45fdc32eff6eb65e61403a09d860f7da1"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
