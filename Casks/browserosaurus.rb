cask 'browserosaurus' do
  version '10.6.0'
  sha256 '3dff071e8d1c93517c1cd8a6d5d5035bcf70d3bb7220f827a4d16f39303f028c'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
