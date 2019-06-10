cask 'browserosaurus' do
  version '5.4.6'
  sha256 'efa5973403d00e4d8c8c4bf78f5ae1544fb0d07198cdc83c21928dd722d0a1e6'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
