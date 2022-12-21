cask "plexamp" do
  arch arm: "-arm64"

  version "4.6.1"
  sha256 arm:   "b8e07c6e5ab1f25dedaa6ff8abf2b87735f2338cf6a29eb1def887145e61ab22",
         intel: "2d2e6bc32f2591f44abc4608a07942d951fec6fa9c415e3375767d9d13e4be25"

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
