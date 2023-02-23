cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.7.0"
  sha256 arm:   "249bc57c435af67647cb571f63c02f2e0ce5d6d95c66e15a2c10574b96005568",
         intel: "d71834e0e83f3ef85d16c89f4305204636d38c18dfd9b377db1a59436694716b"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
