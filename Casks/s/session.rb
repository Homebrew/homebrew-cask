cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.3"
  sha256 arm:   "aeda0e48f685da12ce39d92a68bc35f4e1ab796e5cdf3439e5a902f9ea5015a9",
         intel: "df9e79bd5511fdc175154a3f4751a3c33395ac83914006696664277114184880"

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
