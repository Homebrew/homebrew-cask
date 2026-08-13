cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.24.0-beta.1"
  sha256 arm:   "52ceaab410cfe5e92e500217a2547d919f9a1e1455b9063dc0691622d024664a",
         intel: "e2f367c54445e92493f0a1f429846845485a3eea00ae4f665be6d562a7066f18"

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
