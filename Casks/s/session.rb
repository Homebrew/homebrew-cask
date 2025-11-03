cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.2"
  sha256 arm:   "23063426aef1ddafc2dd3b63a9d2ccca02170cefe55e2f52d4f7e3add7146620",
         intel: "be7e2d3ae9321f871ff8feb00db9e580a8fe6ef13ffa8e394736c5d2b260ca01"

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
