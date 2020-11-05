cask "plexamp" do
  version "3.3.1"
  sha256 "4faf2897d3c96e57d01a5391e1067ee8cf7da15873f990459a61538b82408ded"

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
