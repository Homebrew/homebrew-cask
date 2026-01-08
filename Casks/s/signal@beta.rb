cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.85.0-beta.1"
  sha256 arm:   "67afaaf329e43bf8afedcd38a23c9ff341c336acda9dd73829a79cbe55c3edf1",
         intel: "a6fbf29f1ea30423f9faf02569f13cb7b6e769d219c9c60fcd0211492321beb8"

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
