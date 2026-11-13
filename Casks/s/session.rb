cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.4"
  sha256 arm:   "2d759b67eada803546dcb5831a816aa283ae40ff7d7c330adaf29b61f5d265ac",
         intel: "f6591fa78b7d8a8c56fd4651e9c19351579579ed5a583fd36da8355e36f8f804"

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
