cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.0.3"

  if Hardware::CPU.intel?
    sha256 "e42956bb9d0552c5983fa3e70ed545bc0ff3fc7cef78ae7b0f04b0132efb8bde"
  else
    sha256 "0d4ee84c8a2128698900eac256d9af7b5467d427e264849ce703ffb49ebd8ae9"
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
