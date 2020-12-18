cask "signal" do
  version "1.39.4"
  sha256 "8697d193b8bcf064d54d6b2b4b4fa8fbc2806919f0bf1e280afe22070d1c2736"

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
