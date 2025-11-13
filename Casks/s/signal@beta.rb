cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.80.0-beta.1"
  sha256 arm:   "23894080ac07503d64ec01b855589b3fa16438abdba535f09ca69c808783e8c9",
         intel: "a10da18eae0cf5f3039d5021ed89846a83371af421a95092e8947bab9951947f"

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
