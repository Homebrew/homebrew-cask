cask "browserosaurus" do
  version "10.12.2"
  sha256 "807d4d4480dc4f10d2413df353bfe8c0a398a6ecb276e8903c09241b19aea74e"

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  homepage "https://will-stone.github.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
