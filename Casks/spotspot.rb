cask "spotspot" do
  version "4.0.2"
  sha256 "789ea9104c704bf7632ec4d0e06ec614470fe446bbd19076f818136aa05af76f"

  # github.com/will-stone/SpotSpot/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/SpotSpot/releases/download/v#{version}/SpotSpot-#{version}.dmg"
  appcast "https://github.com/will-stone/SpotSpot/releases.atom"
  name "SpotSpot"
  desc "Spotify mini-player"
  homepage "https://will-stone.github.io/SpotSpot/"

  app "SpotSpot.app"
end
