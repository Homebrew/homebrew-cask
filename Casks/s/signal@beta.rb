cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.17.0-beta.1"
  sha256 arm:   "7ac43836e6bc871dc6ba985187b4cf5dcc48c69603434778ca6e5526dca9c727",
         intel: "39915777d13c5246d5713684f3af589f6d2a2833a4e59eb8e5bfcb1aa10fcbb8"

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
