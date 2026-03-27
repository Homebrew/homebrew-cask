cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.5.0-beta.2"
  sha256 arm:   "22a9d06b231e9590eaf6f1db00066a6f962cfbac44ff5f0e667622b1dccc7934",
         intel: "481c50e6d09757bfe61aa7802e8f4ae165e6a0b930fe6d62b9daa93e42cf77e5"

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
