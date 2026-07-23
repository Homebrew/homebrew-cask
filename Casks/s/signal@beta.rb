cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.21.0-beta.1"
  sha256 arm:   "9849f4e8333bbcd93cf2a4010bda1255b1ebd5690b5060b3e459521af3b2e80f",
         intel: "d174fa5f0ff2ffd7727cc0c88cf420e10c3a62c7a3ad0ebc053a6de63ee320b5"

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
