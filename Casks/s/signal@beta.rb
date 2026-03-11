cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.3.0-beta.1"
  sha256 arm:   "c2de6e89d5407ae1eba9f3b6326064a97a401e39d1f7ee3566fad6c4e079b64c",
         intel: "6e9dd0d758a6b067bbbfd64c8e3a91eb3f4338f82ffa1ae984d41a5a388bf014"

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
