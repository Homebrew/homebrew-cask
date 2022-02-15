cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.0.0"

  if Hardware::CPU.intel?
    sha256 "5aa900de0dc7c6f0081bea5c56f0fae0a220e886076a56ed2e650defe80a4edd"
  else
    sha256 "84476e43d516eb9fe6bc4dd56241fb747b27cf47fddbc65c1f596ed7c32f1e9a"
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
