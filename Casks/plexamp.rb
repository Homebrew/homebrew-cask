cask "plexamp" do
  arch arm: "-arm64"

  version "4.4.0"
  sha256 arm:   "70979b076b948a3d3685ab1e67be51e98254a9df2223b5e50429bf77605238c7",
         intel: "d5e5c6cb8b3bb4ff0b0be2e93f40a7067450fa386ac5ec39dd2e3bbf77219a09"

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
