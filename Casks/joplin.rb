cask "joplin" do
  version "2.10.19"
  sha256 "04af79d472dff8bd71f530e5a96d7598d9e7ae71df678a9b2a4db93885579ee3"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg",
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
