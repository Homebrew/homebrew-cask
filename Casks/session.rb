cask "session" do
  version "1.10.7"
  sha256 "6bc9a9b2476aaa6c97604a9a1b0bd0899563a614919691166879bc6e8efbed08"

  url "https://github.com/oxen-io/session-desktop/releases/download/v#{version}/session-desktop-mac-#{version}.dmg",
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
