cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.4"
  sha256 arm:   "b0e406ddf6e90bf93f458c9dc206cf440cf0ed37274e8becd5bf06a3071eafaa",
         intel: "723ee14d8222409dfe5776d31f2f054a148678e547fbc2f3561500645f99f2c8"

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
