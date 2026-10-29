cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.3"
  sha256 arm:   "bc3f81ce0062a0577bc9b59ed3fb47262a801e6ff455c73b5f5d8582d56cb5dc",
         intel: "ebd08b724254de42f8f4d2090b87dfe691db402aa234ba0bffe2898995483cb2"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-#{arch}-#{version}.dmg"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.loki-project.messenger-desktop.sfl*",
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
