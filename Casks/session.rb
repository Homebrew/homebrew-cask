cask "session" do
  version "1.11.0"
  sha256 "b40d527ba6543ac52da1e08296514fa39237538769bdbc3abb240a078ed5a078"

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
