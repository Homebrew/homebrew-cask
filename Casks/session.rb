cask "session" do
  version "1.3.1"
  sha256 "56ac555a7722d2b124ab63a6c3e11375c1eed611e5a07391f39cfdc7d0905cdb"

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
