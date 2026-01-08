cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.6"
  sha256 arm:   "6d7ee66f2ad60fb81d1e222bc8ad80b127d884fc4dad773a64d16c43472e7d82",
         intel: "5f9e8a7c1c0a287623a4a4fe66a6010fceeb9235e79af3262616297e9d226ab5"

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
