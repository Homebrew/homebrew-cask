cask "starsector" do
  version "0.9.1a-RC8"
  sha256 "b11e2d15c5ce16572ac8731f2ab649183a3f285b39ea6c8dc74ece7b8dc9fc78"

  # s3.amazonaws.com/fractalsoftworks/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fractalsoftworks/starsector/starsector_mac-#{version}.zip"
  appcast "https://fractalsoftworks.com/preorder/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  app "Starsector.app"
end
