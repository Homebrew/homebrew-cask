cask "session" do
  version "1.4.1"
  sha256 "88a4c6eb5bfaf634ccbc5b167075b223693fbdd6583418a51377aaefa7a6cf17"

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
