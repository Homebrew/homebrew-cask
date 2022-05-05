cask "session" do
  version "1.7.9"
  sha256 "8e88dc5f37fbf6efbbe83cf73f2b5b3d33c7b501dc2b3adb4e4b06bb2b4574e9"

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
