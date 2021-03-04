cask "plexamp" do
  version "3.4.3"
  sha256 "1d09b8d72bd072636b238ee9f9cd2bc5cee32f708859292848ee1c270288fffa"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
      verified: "plexamp.plex.tv/"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
