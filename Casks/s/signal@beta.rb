cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.56.0-beta.2"
  sha256 arm:   "c8260dac209fe56194c589a6c6349c99bcb2083f8a144e018834f0bd8c67e9cd",
         intel: "b410e30523bb9c54218a141978cc2a3e54aecedf643978b0507fc3bfead76377"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
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
