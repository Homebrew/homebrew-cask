cask "signal" do
  version "5.2.1"
  sha256 "ba3f743efbb71f623a8988789f937819c34cc579194a8fd9dce1fcf9cc0879c5"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    strategy :github_latest
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
