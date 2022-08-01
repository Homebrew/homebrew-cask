cask "plexamp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "4.3.0"

  if Hardware::CPU.intel?
    sha256 "1ead84054eb80d2ed1232ac3b3768fa082685a2c4f5e2018c4c8414b3e6447ab"
  else
    sha256 "63a74f995963b536b1baaee256a32513c674189b6ef543badf4bf6f5b7ed6cba"
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
