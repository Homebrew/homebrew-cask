cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.4"
  sha256 arm:   "cb3753f9cc9e74c4e37a9b46f62e61345c4c0f76ac121e7d2b65931434663f3d",
         intel: "ba26634248a6e5061e48a5d5fa3f385c99be03d4da455eb4525218828ee6c9e1"

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
