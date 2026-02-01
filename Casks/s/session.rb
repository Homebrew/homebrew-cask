cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.8"
  sha256 arm:   "a5a190577e9e6d526f6c3061523abe59fe8106185029950a75f47dbf292071de",
         intel: "e81af21008d61a04b5cdc259b75435655d6e01f7a73bf15d0be7e1f20eac887e"

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
