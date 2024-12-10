cask "session" do
  version "1.14.3"
  sha256 "ac4c19252d2a8d3b5b20c1c02b15e6e9ef826d8164358c697cc31a489f62c020"

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

  caveats do
    requires_rosetta
  end
end
