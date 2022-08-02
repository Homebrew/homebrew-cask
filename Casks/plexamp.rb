cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.2.2"

  if Hardware::CPU.intel?
    sha256 "00dbdfe45829233f06b57f8a68bde6e1be0384e430d0c77e043b6be3090635ab"
  else
    sha256 "3d11773b2a428eef8115c1b21878df4a7f97b8c13396a2653685bf4d92581933"
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
