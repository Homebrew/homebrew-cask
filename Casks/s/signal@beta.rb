cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.90.0-beta.2"
  sha256 arm:   "af4fe62efe33bbc6cc8a92d40b19cb85c203f8ddbec5cc167bf85fcfa6fe6c25",
         intel: "5971735571eac5a9dbce6dad69303b3a6449868c2aa1d97a95f21daa74f588cf"

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
