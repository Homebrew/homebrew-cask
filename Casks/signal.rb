cask "signal" do
  version "1.37.2"
  sha256 "7ec74674b6ac38aab7a22d74a9efe4dd72883304a388e1e8d330f6c2b9718ed0"

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
