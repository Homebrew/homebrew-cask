cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.15"
  sha256 arm:   "39953286fab1281a0ef7195ea363f166a6ca83ba30efa96354f9ee7ec35619f8",
         intel: "f4a0a32c72a156ef0b1583de80c9ad2d9380f98165f926e61429ce3a2a9b482a"

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
