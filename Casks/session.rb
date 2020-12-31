cask "session" do
  version "1.4.4"
  sha256 "af40febaaaabc3a5b67f4b8db4c32293cc63ba2d73a56e878ee81a800c183fbe"

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
