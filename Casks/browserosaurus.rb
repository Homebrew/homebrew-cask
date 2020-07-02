cask 'browserosaurus' do
  version '10.11.0'
  sha256 '23b47a2469b3922a9b7c2a7dac3c8dcb099015c88baa0e5fc50a8a957526e45d'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  auto_updates true

  app 'Browserosaurus.app'
end
