cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.6"
  sha256 arm:   "17e26767ab2f180e98276d5ed45bd648e5c4d7f783eb0dc7d3f7a191fb3eae30",
         intel: "c9e59029c5773580eb4d300fcf7d6586e61f0eb8d3f682b26f9567a355c2ed5f"

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
