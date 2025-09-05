cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.7"
  sha256 arm:   "06020c1c21d22cdd5a69f6c13065929046a6d0820dd0b2179411f30d15812263",
         intel: "aee613a87d498261368540cbbbb268087125f446f92cc92a4b6ba637bc40dd04"

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
