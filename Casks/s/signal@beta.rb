cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.75.0-beta.1"
  sha256 arm:   "0ef531ee7a433a5ed1d5f412bf5e01ae8aba2d6db78f94b8b224d22305dc1d06",
         intel: "7344c7269b45930d47dc9e2e9f818c2bea86d3a94cbd01f879d51c1e5a31d7be"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
