cask "signal" do
  version "1.36.3"
  sha256 "94ffa7b4615d783290066dc5f7dd4dd956d1fe229f334dee543627979846daac"

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
