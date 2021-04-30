cask "soda-player" do
  version "1.4.2"
  sha256 "8a11327336f0e79393e9c57f4fbb86513f50920559b7e1057627426b0654de76"

  url "https://releases.sodaplayer.com/mac/Soda%20Player%20#{version}.dmg"
  name "Soda Player"
  desc "Video player and streaming platform"
  homepage "https://www.sodaplayer.com/"

  livecheck do
    url "https://www.sodaplayer.com/mac/download"
    strategy :header_match
  end

  auto_updates true

  app "Soda Player.app"

  zap trash: [
    "~/Library/Application Support/Soda Player",
    "~/Library/Preferences/com.sodaplayer.sodaplayer.plist",
    "~/Library/Preferences/com.sodaplayer.sodaplayer-helper.plist",
    "~/Library/Saved Application State/com.sodaplayer.sodaplayer.savedState",
  ]
end
