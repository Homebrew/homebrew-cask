cask "joplin" do
  arch arm: "-arm64"

  version "2.12.18"
  sha256 arm:   "c625970fe50b49527cd2eaee633d2e445903453d5039477a15258328af722cc7",
         intel: "6ad77b9e479f2ef8a54eadfd9d32db5d0866d73cc108738b2fb31127095348c9"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronization capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
