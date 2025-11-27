cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.3"
  sha256 arm:   "918553ebabf5719585eb6434f026c5b697b7fb8fc6c2cf5b7fa75bedd1f3d2ea",
         intel: "ff9662a02abfff601ff745dfd07b007033ca428a38f7b57575e9d2b360669f2e"

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
