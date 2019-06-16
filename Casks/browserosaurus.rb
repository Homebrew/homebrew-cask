cask 'browserosaurus' do
  version '6.0.1'
  sha256 'e2b4cf8c87e9b46463193bc18da494accb99d8d0643c1c9ceee5e984d7542a71'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end
