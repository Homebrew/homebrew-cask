cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.2.0"

  if Hardware::CPU.intel?
    sha256 "4af8745381c6be7a6af53aa35666f1287f6baa8ec9139074ad53957a7a246da5"
  else
    sha256 "ee037343cf946f117204eb6d7841860951e164a7eb8763431445bc3a099b2e98"
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
