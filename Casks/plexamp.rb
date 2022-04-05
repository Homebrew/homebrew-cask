cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.1.0"

  if Hardware::CPU.intel?
    sha256 "91686008e6acf6cbebbe0db19a4a61a86ffd300f938f70d5688bf02e3e1ac661"
  else
    sha256 "ad128f02dd30e864be101f1984a1217d8597352cc7541e8758d4f811772369d2"
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
