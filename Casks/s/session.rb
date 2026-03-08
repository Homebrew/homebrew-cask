cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.12"
  sha256 arm:   "013fdca44274b1db1f47ff254abd6c1263658786b0ff070360c2294b5f476a16",
         intel: "480f1309fb0be03b6206f2151bb67d57719cf290995cd42c1aa90ee25912feec"

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
