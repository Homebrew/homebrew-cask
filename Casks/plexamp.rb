cask "plexamp" do
  version "3.2.1"
  sha256 "7c39667cc7a4f63db701875141a8150b5d37cdc26df338bd375284aac7f9ffa4"

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
