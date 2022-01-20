cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.9.1"

  if Hardware::CPU.intel?
    sha256 "f618a8bfdc257939a8fd466d4df0cbf41fe3b07876f417cd558d8d2ccafaec34"
  else
    sha256 "e30d16ac098404118fab9045a61be7517fbc5748f209a8aa3f4e775ef2a134c7"
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
