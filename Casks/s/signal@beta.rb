cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.7.0-beta.1"
  sha256 arm:   "ebce48d279b8be16aea6eb7c3ae0fb7457137d5f70b3527811dd1e8ac036e8e8",
         intel: "e8f0fa814b36dd5c4e46c3be20e66e4e3ffce90cca249a3a29aae1abfb574201"

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
