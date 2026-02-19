cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.10"
  sha256 arm:   "244e1a121cc48ed8e20515fb0a04e29b629c220afac6172e6994099f33bba2f4",
         intel: "5204a3692dd1ecb62c0d8cd433a0b1c6ebeca21d0c63f250e97d3eacad3de4d3"

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
