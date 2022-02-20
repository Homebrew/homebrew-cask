cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.0.1"

  if Hardware::CPU.intel?
    sha256 "127e6b86ddaaceda422aa686c903277139d2aa338c72182253712231a2ea2004"
  else
    sha256 "1fb91447a07d363cf3c8a65587d95c3446f8f046ee681899399d09a4c28e97c0"
  end

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
