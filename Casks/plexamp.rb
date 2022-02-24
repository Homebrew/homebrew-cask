cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.0.2"

  if Hardware::CPU.intel?
    sha256 "4eb4db1e196933479315a22aaaf31101c8ada0887dfd934a631802b702167439"
  else
    sha256 "0fab9f8f957708404e995c3078525050064455b21cebbf2bc8255f009fb51130"
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
