cask "joplin" do
  arch arm: "-arm64"

  version "3.6.15"
  sha256 arm:   "d8b33336d3cbe963d37fd6af1a677d837fcee6b793d6690ce6a486c240197f29",
         intel: "dd614d8624ae7b6ef7085821e44f306d6c5d9ed57c8160f94e71d697c114e80e"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
