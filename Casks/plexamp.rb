cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.2.1"

  if Hardware::CPU.intel?
    sha256 "2af232679f0caca98e7f63c6a35f10032bf851e643956215e38af6e692ecb814"
  else
    sha256 "b5f94868d89b39c6c3c06cee13bbb584e6734a59260a823bb74aea8ea2dafae6"
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
