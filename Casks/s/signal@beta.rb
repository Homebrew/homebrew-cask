cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.45.0-beta.1"
  sha256 arm:   "40d7f22a7f49ff0783958ee561c009c94a05291de11ea17aadf3623cadc1c636",
         intel: "8808d783c6ba73a27c37fc88e9a56fbe929255bba2d94d60a16acc4bb211003d"

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
