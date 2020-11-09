cask "session" do
  version "1.4.0"
  sha256 "a166d7e309e8ebb76beaa8cb58777e6c3280daffd3bfdb89477d4914b7f76895"

  # github.com/loki-project/session-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast "https://github.com/loki-project/session-desktop/releases.atom"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
