cask "session" do
  version "1.2.1"
  sha256 "caed197054f391a18d5f6f2adba20e09640b3a9a7ea205a164e0a0b7ec59702e"

  # github.com/loki-project/session-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast "https://github.com/loki-project/session-desktop/releases.atom"
  name "Session"
  homepage "https://getsession.org/"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
