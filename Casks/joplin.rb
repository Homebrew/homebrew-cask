cask "joplin" do
  version "1.3.15"
  sha256 "03faf8dc2e2700b5c60ae747606381e4ace63cf3f110364fdf5db9498710007b"

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
