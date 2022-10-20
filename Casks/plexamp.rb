cask "plexamp" do
  arch arm: "-arm64"

  version "4.5.0"
  sha256 arm:   "e14afd3b7c9d6add0419846a2c7c957226aa380c591c233709619c4d20eaae62",
         intel: "02b669549fa5dae743171308dc786d309f7d109415c9faf65f52f7d39c73a84f"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}#{arch}.dmg",
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
