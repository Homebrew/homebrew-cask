cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.80.0-beta.3"
  sha256 arm:   "900e4b6e0154c519eb2f7d5174f09b3e365aa6f784734ffd5bd04b360dbccb98",
         intel: "2d4483979e4642a2ecd6433441eff2d1cd625840fdb6558bd3d13a02807c90dd"

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
