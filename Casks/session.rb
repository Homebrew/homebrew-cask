cask "session" do
  version "1.4.7"
  sha256 "6a6989530d7bb75d33dd3964eb4c5f97e0371a61840dce0209ba54df173595b8"

  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-desktop-mac-#{version}.dmg",
      verified: "github.com/loki-project/session-desktop/"
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
