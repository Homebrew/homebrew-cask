cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.16"
  sha256 arm:   "5efb5c98202bf6357ae35b508e07609572faef66db6ab6458b248a42d0ab1a28",
         intel: "aab02da37df677196ee5f58ab8bcbd1dd37206267004d9d365beeac3dcf378b9"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-#{arch}-#{version}.dmg",
      verified: "github.com/session-foundation/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
