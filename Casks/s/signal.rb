cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.15.0"
  sha256 arm:   "9808321a58815bb6c5612a2ba80fd751599ff86a4dfb8eda818853ae93617d4c",
         intel: "8350785ebdf7638b6305b35a9dab446e2b343c1ffbdc6f8c4b8f448d455e38ca"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
