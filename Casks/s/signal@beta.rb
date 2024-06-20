cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.14.0-beta.1"
  sha256 arm:   "e85a9d434e9c4b26626ef4d4e77d52bb1af4baa2b71151cf78bff8ef02b05607",
         intel: "31c8c7ed99e6e3f7f910fda538253e6fe92d1895c6e8e61186c604049fa93405"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
