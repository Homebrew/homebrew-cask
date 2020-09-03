cask "browserosaurus" do
  version "11.0.1"
  sha256 "d95057ccb8303c66dc42d40aaacbaf7751f3c63cb59fd85a4150b07219c48b6c"

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  homepage "https://will-stone.github.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
