cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.49.0-beta.2"
  sha256 arm:   "867d658da114a0a584298c513cd130011985212efcbc40f1506f5577fea3a116",
         intel: "febc6ba3b4f6f1d5d5599cdb49d355b9357dab278dbd2271ce36d2ee07044c99"

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
