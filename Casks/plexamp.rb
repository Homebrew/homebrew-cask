cask "plexamp" do
  version "3.2.2"
  sha256 "1b9d9bf3aafc08ef4032a46c69e7e8ecde5cd6d53cbc897d6d30e66386a705d0"

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
