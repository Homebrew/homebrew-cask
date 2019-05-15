cask 'browserosaurus' do
  version '5.3.1'
  sha256 '6f3f525048e0481a1aabfde81a0bea5708fb4a7c9a39f8c30cb00c4db2195c4d'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
