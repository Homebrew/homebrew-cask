cask "joplin" do
  version "1.4.18"
  sha256 "b50367a90bd7c04acd4e586f6eec78a25936319a53dc3aa4266e838e6926409a"

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
