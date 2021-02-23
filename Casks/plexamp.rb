cask "plexamp" do
  version "3.4.2"
  sha256 "c1be8a9dd75fbed0c7254dffd1fc490c5896ece2674fd9bddeaca09dcd051fa5"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
      verified: "plexamp.plex.tv/"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
