cask "signal" do
  version "1.35.1"
  sha256 "c5a31c256e1bec4724a4bf4200b769fed146a6092030181922803fdbb85d0f52"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.dmg"
  appcast "https://github.com/signalapp/Signal-Desktop/releases.atom"
  name "Signal"
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
