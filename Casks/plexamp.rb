cask "plexamp" do
  arch arm: "-arm64"

  version "4.6.0"
  sha256 arm:   "4df6de187371d3e676704773c05b05b55d7f0736fe0e254c2ba6f86fe8f182ad",
         intel: "25cbd9f5ddee016903d958cd5fae46f8aba0d1e9e6c412fcbe690e3b74710d14"

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
