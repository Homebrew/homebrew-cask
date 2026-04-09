cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "8b2fcaf4d9d559dfb9650d53613cc38dbbc1b2ad7b893c7ca9979ec6f0b7d3ff",
         intel: "714aaecc686482c20843954e78b712aba372b8494e31a0f2ba02063b800e7869"

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
