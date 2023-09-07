cask "session" do
  version "1.11.2"
  sha256 "464da2be6b4547f99c54bcd66c6fae699a0d46fbe7d10bd9a28149c1aaf3b5fb"

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
