cask "splayer" do
  version "4.9.3"
  sha256 "f7c9602f4c11202015084368cb975fb69f72aa41738a998741c9640ad655bb74"

  # github.com/chiflix/splayerx/ was verified as official when first introduced to the cask
  url "https://github.com/chiflix/splayerx/releases/download/#{version}/SPlayer-#{version}.dmg"
  appcast "https://github.com/chiflix/splayerx/releases.atom"
  name "SPlayer"
  desc "Media player"
  homepage "https://splayer.org/"

  app "SPlayer.app"
end
