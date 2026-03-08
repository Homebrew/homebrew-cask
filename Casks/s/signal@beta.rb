cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.2.0-beta.2"
  sha256 arm:   "df7e03c4a3c84ef36061ea74fb34d439411b232965bf8eff94ac691d4d99e417",
         intel: "539532d4171363444104e6a92b3ab21555a251006ef00428ed75d0b7cb87e0e0"

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
