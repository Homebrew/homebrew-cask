cask "splayer" do
  version "4.9.4"
  sha256 "e91c8d39840039393d73a682e14ed5115dfa6f66ac582aeee482597525704fe5"

  url "https://github.com/chiflix/splayerx/releases/download/#{version}/SPlayer-#{version}.dmg",
      verified: "github.com/chiflix/splayerx/"
  name "SPlayer"
  desc "Media player"
  homepage "https://splayer.org/"

  app "SPlayer.app"
end
