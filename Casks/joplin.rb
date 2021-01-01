cask "joplin" do
  version "1.5.14"
  sha256 "92dbe0a013fa11691ef95dd4442823446dbd21bc2500b8bac5e13d214867f771"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg",
      verified: "github.com/laurent22/joplin/"
  appcast "https://github.com/laurent22/joplin/releases.atom"
  name "Joplin"
  desc "Note taking and to-do application with synchronization capabilities"
  homepage "https://joplin.cozic.net/"

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
