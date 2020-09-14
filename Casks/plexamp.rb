cask "plexamp" do
  version "3.2.0"
  sha256 "78a449f83f75ca5d9ab12bdb60789fa98e5ba3c9bb11acaea3483c87fdad716a"

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
