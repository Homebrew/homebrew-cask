cask "plexamp" do
  arch arm: "-arm64"

  version "4.6.2"
  sha256 arm:   "98f5f0162f39ccff7ea27a2d990d5d1bf3c6f2004fe1bbdd5764e408482087e1",
         intel: "8e96cc24ce55efe417ecc94de46c4811f7f5c4b606417366e912da537cc66c93"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}#{arch}.dmg",
      verified: "plexamp.plex.tv/"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Plexamp.app"
end
