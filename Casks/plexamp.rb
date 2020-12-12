cask "plexamp" do
  version "3.4.0"
  sha256 "63b8e77102b867ceaa8cb1617cd177a9ad4957e7a8d7fb93ccac4f7714c25b4f"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
      verified: "plexamp.plex.tv/"
  appcast "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
