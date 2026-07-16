cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.20.0-beta.1"
  sha256 arm:   "e10f966c1b42ec4b9cb4450ff4c1ff2fd9807e44d919b57e572a9b752d7fcfc5",
         intel: "03f547705b134e7fa0051ee033a11d07d8421563b27d73a1546e762f898ebf84"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
