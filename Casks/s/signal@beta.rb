cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.40.0-beta.2"
  sha256 arm:   "5c9f2a0ad33160013db652c9236139484bf283547b8e3ac277719f2aa03ef549",
         intel: "42ba4e9d9fc22b9071a63e7dbe75e00d00247fed79ab4faae4f8cea7f61207b0"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
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
