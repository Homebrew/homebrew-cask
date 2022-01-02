cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.9.0"

  if Hardware::CPU.intel?
    sha256 "a40e58af21255fc9b9c1a2363165ee2f0fb7708e68ca88c2e14d1124f78dc41b"
  else
    sha256 "765ae9021dd7a2e4129bf48c5f26517e9dea8e1a93941bfc36e81544fa71136a"
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
