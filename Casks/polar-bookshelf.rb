cask "polar-bookshelf" do
  version "2.0.42"
  sha256 "a7aee91820b18d848abe92cbd7c7c36d6fb935a9b846941b316ed42c1b687687"

  # github.com/burtonator/polar-bookshelf/ was verified as official when first introduced to the cask
  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/Polar-#{version}.dmg"
  appcast "https://github.com/burtonator/polar-bookshelf/releases.atom"
  name "Polar Bookshelf"
  homepage "https://getpolarized.io/"

  app "Polar.app"
end
