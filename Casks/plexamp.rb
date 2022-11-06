cask "plexamp" do
  arch arm: "-arm64"

  version "4.5.2"
  sha256 arm:   "2ab606c6ff4802e627ba9005d6e97777c6d196119f9e1284046af1be47cb5d0f",
         intel: "de2612598ef282a78befaf8c4adb5961634fa279bb2db1d61c1513e0321e74cd"

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
