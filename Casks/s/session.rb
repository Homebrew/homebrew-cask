cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.1"
  sha256 arm:
                "1ef63f9f1cf68d958034fb3a76fce5d04b93c8d11b52900bb431477c8cff6786",
         intel: "85bf571e976f92446177d245041e1344950621adfc67be19ae6241fecceb3696"

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
