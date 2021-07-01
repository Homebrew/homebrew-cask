cask "plexamp" do
  version "3.5.0"
  sha256 "e72d312332a94ec948674877672eeeb73151b920be123902658e925662c93fd9"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
      verified: "plexamp.plex.tv/"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "Plexamp.app"
end
