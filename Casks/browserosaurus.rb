cask 'browserosaurus' do
  version '5.5.1'
  sha256 'd6a91f0b5e3d7b608f355f17459ad3f1085b4f5448455bdbe6d35c58e5e95b9e'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
