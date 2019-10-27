cask 'browserosaurus' do
  version '6.7.0'
  sha256 'fad7fe4be779025d8bfe2d34aa59c69415ba21b54669b2e268b19eeafcbc1e2c'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
