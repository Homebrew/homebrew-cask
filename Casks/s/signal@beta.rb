cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.10.0-beta.1"
  sha256 arm:   "55a68513fa75bfc50e408dd24b6ea6c80b3963735d69bb5a57f1d8aa2a699345",
         intel: "763b872aa0be00f2602b7a7c55f537cfeedd229459e3b426066dff669a32a46a"

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
