cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.0.0"

  if Hardware::CPU.intel?
    sha256 "872435af0b97bc9dff6195413a0874ce8a70d1a762a5fbbdf1707d1770d819f7"
  else
    sha256 "82e56de03d6d5745532d4aad5bf9813a85b8d98386ee45943e86adef6fad3406"
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
