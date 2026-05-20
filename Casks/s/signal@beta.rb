cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.12.0-beta.1"
  sha256 arm:   "0b18f2d7d0a35a587e86ab241b6cc07d482eaa03aa467bed286e3aeef61c00e6",
         intel: "782880bdc7dd68f2e6b4dc6baf2f47c40d30095acaeb97d94c44475080b079dc"

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
