cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.25.0-beta.2"
  sha256 arm:   "7ea60fbb38d3acb748fbe13aa44da23c4a492400ee9669ae3625ab3491c4ba73",
         intel: "0d15270943fc9a1ef0f57cf0a8f2869557870affe327a4a1d6281e78fac4a8d7"

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
