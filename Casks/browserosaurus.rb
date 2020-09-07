cask "browserosaurus" do
  version "11.1.1"
  sha256 "5a04bbec7a7a0a48af12ccae3fc3330ae1e9cd32b501ba79a75ca34b1d51adfc"

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  homepage "https://will-stone.github.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
