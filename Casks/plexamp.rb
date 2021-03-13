cask "plexamp" do
  version "3.4.4"
  sha256 "0b9cf32aad697d2c8f91d7ff26192fccb9cf95639a363e6da0f2404b4581d7ad"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
      verified: "plexamp.plex.tv/"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
