cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.5.3"
  sha256 arm:   "36f1842ec760d554dbd7a3a6a94e1a00c5f9996df028860b0cea25c022e98949",
         intel: "f2d49d1cc01aa20d19a15a5a6e5fa6709fa12ca1d9f7abb75bf9508714cbbec6"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}-#{arch}.dmg",
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
