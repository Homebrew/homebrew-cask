cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.5"
  sha256 arm:   "2b24557c2b63d61ff446da1061da8481c6816dd24496df0d45ef765374f7bb05",
         intel: "a5291ab480a20c13cd3ec4372da196027dbb93b180b8dac193a684d634e4b741"

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
