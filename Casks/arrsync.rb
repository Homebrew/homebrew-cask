cask "arrsync" do
  version "0.4"
  sha256 "3c50f834712f6745d1cc723f88eb7d93339b7c9377edb2d551c130ea3f01bab3"

  url "https://downloads.sourceforge.net/arrsync/arrsync-#{version}.dmg",
      verified: "downloads.sourceforge.net/arrsync/"
  appcast "https://sourceforge.net/projects/arrsync/rss"
  name "arRsync"
  homepage "https://arrsync.sourceforge.io/"

  app "arRsync.app"
end
