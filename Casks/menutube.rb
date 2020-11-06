cask "menutube" do
  version "1.7.3"
  sha256 "2428a68c085c9a10407eca1d778c2d5b3d37e4d0dfadb12376b44eab2f9f43a1"

  # github.com/edanchenkov/MenuTube/ was verified as official when first introduced to the cask
  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube-#{version}.dmg"
  appcast "https://github.com/edanchenkov/MenuTube/releases.atom"
  name "MenuTube"
  desc "Tool to capture YouTube into the menu bar"
  homepage "https://edanchenkov.github.io/MenuTube/"

  app "MenuTube.app"
end
