cask "session" do
  version "1.5.0"
  sha256 "6f586b5c466cbc47eaf253bd545839100106e1b6449cd46c00e13c74b5454200"

  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-desktop-mac-#{version}.dmg",
      verified: "github.com/loki-project/session-desktop/"
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
