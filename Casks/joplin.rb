cask "joplin" do
  version "1.3.18"
  sha256 "4732a2524429c7739decae7d48a80294637d4951d013f5516b3468473bdca97e"

  # github.com/laurent22/joplin/ was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
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
