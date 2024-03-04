cask "session" do
  version "1.12.0"
  sha256 "180ce32aae9c846e0550e8ecaea25642d8f909c9cb467724633992d7252b41b7"

  url "https://github.com/oxen-io/session-desktop/releases/download/v#{version}/session-desktop-mac-x64-#{version}.dmg",
      verified: "github.com/oxen-io/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
