cask "signal" do
  version "1.38.1"
  sha256 "bd6815575e2b58ace3dab05e0ec0e68d6a8548c470c65eed78ab46a4ffcfc3ed"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.dmg"
  appcast "https://github.com/signalapp/Signal-Desktop/releases.atom"
  name "Signal"
  desc "Cross-platform instant messaging application focusing on security"
  homepage "https://signal.org/"

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
