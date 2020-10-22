cask "joplin" do
  version "1.3.5"
  sha256 "d561f2026899aa89c8add13c914777e211fbe53a2206ed4253dbe7ba01a327cd"

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
