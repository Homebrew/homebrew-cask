cask "plexamp" do
  arch arm: "-arm64"

  version "4.5.1"
  sha256 arm:   "f6985f28cbf84018dffe89935fa13d0576b352dac353185e98ec8c599cc3a883",
         intel: "7be3150d33d0629dd5eb5f25020594e29930ec7ea0e00f7bab6ac0f66b666f65"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}#{arch}.dmg",
      verified: "plexamp.plex.tv/"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Plexamp.app"
end
