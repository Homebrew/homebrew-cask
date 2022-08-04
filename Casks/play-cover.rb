cask "play-cover" do
  version "1.0.6"
  sha256 "c34399f5786096e30d0998939cdb0dbf1edb9bf57fbe842d2d5d1f51427cce9a"

  url "https://github.com/PlayCover/PlayCover/releases/download/#{version}/PlayCover_#{version}.dmg"
  name "PlayCover"
  desc "Run iOS apps & games on M1 Mac with mouse, keyboard and controller support"
  homepage "https://github.com/PlayCover/PlayCover"

  app "PlayCover.app"
end
